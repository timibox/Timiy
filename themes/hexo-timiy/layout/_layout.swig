<!DOCTYPE html>
<html lang="{{ config.language }}">
{% include '_partials/head.swig' %}
<body class="{{ body_class }}">
	<div id="page" class="site ">
	{% include '_partials/header.swig' %}
	<div id="main_container" class="main_loop_content">
	{% include "_partials/widget.swig" %}
	<div id="content" class="site-content ">
	{% include '_partials/public/nav.swig' %}
		{% block content %} {% endblock %}
	</div>
	</div>
	{% include '_partials/footer.swig' %}
	{% include "_partials/javascript.swig" %}
	</div>
<script type="text/javascript" src="{{ url_for('/js/console.js') }}"></script>
</body>
</html>
