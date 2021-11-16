{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://github.com/magicant/yash/releases/download/2.51/yash-2.51.tar.xz
91d0c0fa548c9c9a081893f515b4f049
{% endblock %}

{% block bld_libs %}
lib/curses/mix.sh
lib/edit/mix.sh
{% endblock %}

{% block setup %}
export CPPFLAGS="-Dwordfree=yash_wordfree -Dadd_history=yash_add_history ${CPPFLAGS}"
{% endblock %}

{% block configure %}
dash ./configure --prefix="${out}" --with-term-lib=ncurses
{% endblock %}
