{% extends '//bin/coreutils/t/ix.sh' %}

{% block fetch %}
https://ftp.gnu.org/gnu/coreutils/coreutils-8.32.tar.xz
sha:4458d8de7849df44ccab15e16b1548b285224dbba5f08fac070c1c0e0bcc4cfa
{% endblock %}

{% block build_flags %}
verbose
{% endblock %}

{% block bld_tool %}
bin/bison/3/6
{{super()}}
{% endblock %}
