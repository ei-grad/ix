{% extends '//die/c/make.sh' %}

{% block lib_deps %}
lib/c
{% endblock %}

{% block bld_libs %}
lib/kernel
{% endblock %}

{% block bld_tool %}
bld/perl
{% endblock %}

{% block use_data %}
aux/ca-bundle
{% endblock %}

{% block setup %}
export AR=ar
export RANLIB=ranlib
# fix unknown miscompile with clang
export OPTFLAGS="${OPTFLAGS} -O1"
{% endblock %}

{% block make_install_target %}
install_sw
{% endblock %}

{% block configure %}
{% set openssl_conf_opts %}
{% block openssl_conf_opts %}
{% endblock %}

no-asm
threads
no-shared
no-dso
no-tests

--prefix="${out}"
--openssldir={% block openssl_cert_dir %}"${OPENSSL_CERT_DIR}"{% endblock %}
{% endset %}

{% block openssl_platforms %}
PLATFORM_darwin_arm64="darwin64-arm64-cc"
PLATFORM_darwin_x86_64="darwin64-x86_64-cc"
PLATFORM_linux_x86_64="linux-x86_64-clang"
PLATFORM_linux_aarch64="linux-aarch64"
PLATFORM_linux_riscv64="linux64-riscv64"
{% endblock %}

perl ./Configure \
    ${PLATFORM_{{target.os}}_{{target.arch}}} \
    {{ix.fix_list(openssl_conf_opts)}}
{% endblock %}

{% block env_lib %}
export SSL_DIR="${out}"
export COFLAGS="--with-ssl=${out} --with-openssl=${out} --with-openssldir=${out} --with-ssl-dir=$out \${COFLAGS}"
{% endblock %}
