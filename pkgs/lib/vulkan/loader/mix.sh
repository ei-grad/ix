{% extends '//lib/vulkan/loader/t/mix.sh' %}

{% block run_data %}
lib/vulkan/loader/data
{% endblock %}

{% block bld_tool %}
{{super()}}
bld/scripts/reloc
{% endblock %}

{% block configure %}
{{super()}}
relocate "${VULKAN_LOADER_DATA}"
{% endblock %}

{% block install %}
{{super()}}
mkdir -p ${out}/include
{% endblock %}
