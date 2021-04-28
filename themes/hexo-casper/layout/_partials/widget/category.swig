{# 插件 - 分类 #}
{% if site.categories.length %}
	<div class="widget">
		<h3 class="widget-title">文章分类</h3>
		{{ list_categories({show_count: false}) }}
	</div>
{% endif %}
