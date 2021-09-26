import os
import beautysh
import itertools
import subprocess

import core.error as ce
import core.cache as cc
import core.par_exec as cp


def bsh(s):
    return beautysh.Beautify().beautify_string(s)[0]


def execute_cmd(c):
    env = c.get('env', {})

    try:
        descr = env['out']
    except KeyError:
        descr = str(c)

    stdin = c.get('stdin', '')

    try:
        return subprocess.run(c['args'], input=stdin.encode() or None, env=env, check=True)
    except Exception as e:
        def iter_lines():
            yield '____|' + descr

            for k, v in env.items():
                yield f'env | export {k}={v}'

            show = False

            for i, l in enumerate(bsh(stdin).strip().splitlines()):
                if '# suc' in l:
                    show = True
                    continue

                if '# euc' in l:
                    show = False
                    continue

                if show:
                    if l.strip():
                        ss = str(i + 1)

                        yield ss + ' ' * (4 - len(ss)) + '| ' + l

        script = '\n'.join(iter_lines()).strip()

        raise ce.Error(f'{descr} failed', context=script, exception=e)


def iter_in(c):
    if 'in' in c:
        yield from c['in']

    if 'in_dir' in c:
        for x in c['in_dir']:
            yield x + '/touch'


def iter_out(c):
    if 'out' in c:
        yield from c['out']

    if 'out_dir' in c:
        for x in c['out_dir']:
            yield x + '/touch'


def iter_cmd(c):
    if 'cmd' in c:
        yield from c['cmd']


def check_complete(n):
    for o in iter_out(n):
        if os.path.exists(o):
            print(o + ' complete')
        else:
            return False

    return True


def execute_node(n):
    for i in iter_in(n):
        if not os.path.isfile(i):
            raise Exception(f'{i} not ready')

    cached = n.get('cache', False)

    if cached:
        try:
            for d in n['out_dir']:
                cc.restore_dir(d)

            return
        except Exception as e:
            if '404' not in str(e):
                raise e

    for c in iter_cmd(n):
        execute_cmd(c)

    for o in iter_out(n):
        if not os.path.isfile(o):
            with open(o, 'w') as f:
                pass

    if cached:
        for d in n['out_dir']:
            cc.store_dir(d)


def incomplete_nodes(g):
    by_out = {}

    for n in g['nodes']:
        for o in iter_out(n):
            by_out[o] = n

    v = set()

    def visit(n):
        if n not in v:
            v.add(n)

            t = by_out[n]

            if not check_complete(t):
                for x in iter_in(t):
                    yield from visit(x)

                yield t

    for t in g['targets']:
        yield from visit(t)


def execute(g):
    for n in incomplete_nodes(g):
        execute_node(n)
