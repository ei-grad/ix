{% extends '//die/c/cmake.sh' %}

{% block fetch %}
https://github.com/KhronosGroup/SPIRV-Tools/archive/refs/tags/v2022.4.tar.gz
sha:a156215a2d7c6c5b267933ed691877a9a66f07d75970da33ce9ad627a71389d7
{% include '//lib/vulkan/spirv/headers/ver.sh' %}
{% endblock %}

{% block unpack %}
extract1 ${src}/v*

(
    cd external
    extract 0 ${src}/sdk*
    ln -s S* SPIRV-Headers
)
{% endblock %}

{% block bld_tool %}
bld/python
{% endblock %}

{% block cmake_flags %}
SPIRV_COLOR_TERMINAL=ON
SPIRV_WERROR=OFF
SPIRV_SKIP_TESTS=YES
SPIRV_TOOLS_BUILD_STATIC=ON
SPIRV_TOOLS_LIBRARY_TYPE=STATIC
{% endblock %}

{% block install %}
{{super()}}
cd ${out}/lib
rm libSPIRV-Tools-shared.a
ln -s libSPIRV-Tools.a libSPIRV-Tools-shared.a
{% endblock %}

{% block lib_deps %}
lib/c
{% endblock %}
