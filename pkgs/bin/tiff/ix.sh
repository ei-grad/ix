{% extends '//lib/tiff/t/ix.sh' %}

{% block bld_libs %}
{{super()}}
lib/glu
lib/opengl
lib/freeglut
{% endblock %}

{% block cmake_flags %}
{{super()}}
HAVE_OPENGL=ON
{% endblock %}

{% block patch %}
{{super()}}
find . -type f | while read l; do
    sed -e 's|.*HAVE_OPENGL FALSE.*||' -i ${l}
done
{% endblock %}

{% block test %}
test -f ${out}/bin/tiffgt
{% endblock %}
