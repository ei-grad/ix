{% extends '//dev/lang/flex/mix.sh' %}

{% block lib_deps %}
boot/stage/8/m4/mix.sh
{% endblock %}

{% block bld_deps %}
boot/stage/7/lib/mix.sh
boot/stage/4/byacc/mix.sh
boot/stage/6/env/clang/mix.sh
{% endblock %}

{% block patch %}
cd src

rm parse.c parse.h
yacc -d parse.y && mv y.tab.c parse.c && mv y.tab.h parse.h
echo 'extern int yylval;' >> parse.h
touch scan.c
{% endblock %}
