<div class="flink" id="article-container">
	{% for title,fenlei in site.data.categories.list %}
		<h2>{{ title }}</h2>		
		<div class="flink-desc">
			{{ fenlei.desc }}
		</div>
		<div class="flink-list">
			{% for name,list in fenlei.submenus %}
			<div class="flink-list-item">
				<a href="{{ list.path }}" rel="external nofollow noreferrer" title="{{ name }}" target="_blank"><img src="{{ list.icon }}" alt="{{ name }}"/>
					<span class="flink-item-name">{{ name }}</span>
					<span class="flink-item-desc" title="{{ list.desc }}">{{ list.desc }}</span>
				</a>
			</div>
			{% endfor %}
		</div>
	{% endfor %}
</div>