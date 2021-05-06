{# 页面 #}
{% extends '_layout.swig' %}
{% block content %}
	<header class="page-header" style="background-image: url(&quot;https://www.ninaner.com/wp-content/themes/Ninan/img/default.jpg&quot;);">
		<div class="page_meta">
			<h1 class="entry-title">{{ title }}</h1>
		</div>
	</header>
	<div id="site-main" class="site-main outer" role="main">
		<div class="inner">
			<div class="post-feed">
				<article class="post-card post no-image custom-page">
					<div id="photoswipe" class="markdown-body">
						{% if page.type === 'links' %}
							{% include '_partials/links.swig' %}
						{% elif page.type === 'categories' %}
							{% include '_partials/categories.swig' %}
						{% else %}
							{{ page.content }}
						{% endif %}
					</div>
				</article>
			</div>
		</div>
		<section id="comments" class="comments">
			<div class="comments-main">
				{% if theme.comment %}
					<div class="inner">
						<div id="comment"></div>
					</div>
				{% endif %}
			</div>
		</section>
	</div>
{% endblock %}
{% if theme.photoswipe %}
	{% include "_partials/public/photoswipe.swig" %}
{% endif %}
