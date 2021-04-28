{# 插件 - 最近文章 #}
{% if site.posts.length %}
	<div class="widget">
		<h3 class="widget-title">最新文章</h3>
		<ul class="items hot-views">
			{% set recent = site.posts.sort('date', -1) %}
			{% for post in recent %}
				{% if loop.key < 6 %}
					<li class="item">
						<h4 class="title nowrap">
							<a class="nowrap" href="{{ url_for(post.path) }}">{{ post.title }}</a>
						</h4>
						<div class="meta">发表于：{{ date(post.date, "YYYY-MM-DD") }}</div>
					</li>
				{% endif %}
			{% endfor %}
		</ul>
	</div>
{% endif %}
