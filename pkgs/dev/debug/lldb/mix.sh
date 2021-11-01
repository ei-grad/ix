{% extends '//mix/template/cmake.sh' %}

{% block fetch %}
{% include '//mix/template/fetch_llvm.sh' %}
{% endblock %}

{% block bld_deps %}
{{'lib/linux/mix.sh' | linux}}
{{'sys/framework/CoreFoundation/mix.sh' | darwin}}
lib/cxx/mix.sh
lib/curses/any/mix.sh
lib/edit/mix.sh
lib/xz/mix.sh
lib/xml2/mix.sh
dev/lang/python/3/10/lib/mix.sh
dev/build/cmake/mix.sh
dev/tool/swig/4/mix.sh
env/std/mix.sh
{% endblock %}

{% block patch %}
>llvm/unittests/Support/DynamicLibrary/CMakeLists.txt
sed -e 's|libkind SHARED|libkind STATIC|' -i lldb/cmake/modules/AddLLDB.cmake
{% endblock %}

{% block cmflags %}
-DLLVM_BUILD_LLVM_DYLIB=OFF
-DLLVM_LINK_LLVM_DYLIB=OFF
-DLLVM_ENABLE_PROJECTS="clang;lldb"
-DCLANG_LINK_CLANG_DYLIB=OFF
-DLLVM_POLLY_LINK_INTO_TOOLS=ON
-DLLVM_ENABLE_PIC=OFF
-DLLVM_DYLIB_COMPONENTS=''
-DLLDB_ENABLE_LIBEDIT=ON
-DLLDB_ENABLE_CURSES=ON
-DLLDB_ENABLE_LZMA=ON
-DLLDB_ENABLE_LIBXML2=ON
-DLLDB_ENABLE_PYTHON=ON
../llvm
{% endblock %}

{% block build %}
cd build && ninja lldb
{% endblock %}

{% block postinstall %}
#cd ${out}

#mkdir new
#mv bin/lldb* new/
#rm -rf bin lib share include libexec
#mv new bin
{% endblock %}
