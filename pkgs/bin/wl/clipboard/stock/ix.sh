{% extends '//die/c/meson.sh' %}

{% block fetch %}
https://github.com/bugaevc/wl-clipboard/archive/refs/tags/v2.1.0.tar.gz
sha:72dab9a7d3835c76d6ff2089f15ffec9e064a321e5f3cbbe961a8fa81aff5573
{% endblock %}

{% block bld_libs %}
lib/c
lib/wayland
{% endblock %}

{% block bld_tool %}
bld/wayland
{% endblock %}

{% block meson_flags %}
zshcompletiondir=${out}/share/zsh
fishcompletiondir=${out}/share/fish
{% endblock %}
