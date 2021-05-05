{# 友情链接 #}
{% extends '_layout.swig' %}
{% import '_partials/links.swig' as template %}
{% block content %}
	{% set description = __('links') %}
	{{ template.tpl() }}
{% endblock %}
