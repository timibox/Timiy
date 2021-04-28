{# 插件 - 标签云 #}
{% if site.tags.length %}
	<div class="read-next-card-content-ext">
		{{ tagcloud({show_count: true}) }}
	</div>
{% endif %}