{# 首页 #}
{% extends '_layout.swig' %}
{% import '_partials/index.swig' as template %}
{% block content %}
{% set description = theme.bio %}
{{ template.tpl() }}
{% endblock %}