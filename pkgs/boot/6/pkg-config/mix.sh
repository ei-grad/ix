{% extends '//bin/pkg-config/mix.sh' %}

{% block bld_libs %}
boot/6/lib/iconv
lib/darwin/framework/CoreServices
{% endblock %}

{% block bld_deps %}
boot/5/env/std
{% endblock %}

{% block configure_flags %}
{{super()}}
--with-internal-glib
{% endblock %}

{% block configure %}
{{super()}}
(cd glib && sh configure ${COFLAGS} --prefix=${out} --with-libiconv=gnu --srcdir=.)
{% endblock %}

{% block build %}
cd glib && make -j ${make_thrs}
{{super()}}
{% endblock %}
