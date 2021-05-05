{# 标签归档 #}
{% extends '_layout.swig' %}
{% import '_partials/tags.swig' as template %}
{% block content %}
	{% set description = __('tags') %}
	{{ template.tpl() }}
{% endblock %}
