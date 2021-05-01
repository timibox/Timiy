{# 插件容器, 在需要的页面引入 #}
{% if theme.widgets %}
	<aside class="read-next outer">
		<div class="inner">
			<div class="read-next-feed">
			<div class="left_bar">
				{% if theme.widgets.about %}
					{% include 'widget/about.swig' %}
				{% endif %}
				{% if not is_post() %}
				<div class="alteration shadow round" style="background: #fff;">
				{% if theme.widgets.recent_posts %}
					{% include 'widget/recent_posts.swig' %}
				{% endif %}
				{% if theme.widgets.category %}
					{% include 'widget/category.swig' %}
				{% endif %}
				</div>
				{% else %}
				{% if theme.post_toc %}
				{% include "public/toc.swig" %}
				{% endif %}
				{% if theme.photoswipe %}
				{% include "public/photoswipe.swig" %}
				{% endif %}				
				{% endif %}
				
			</div>
			</div>
		</div>
	</aside>
{% endif %}
