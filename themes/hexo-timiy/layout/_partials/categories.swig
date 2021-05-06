<div class="flink" id="article-container">
	{% for fenlei in site.data.categories.menu %}
		<h2>{{ fenlei.title }}</h2>
		<div class="flink-desc">
			{{ fenlei.desc }}
		</div>
		<div class="flink-list">
				<div class="flink-list-item">
					<a href="{{ fenlei.link }}" rel="external nofollow noreferrer" title="{{ fenlei.name }}" target="_blank"><img src="{{ fenlei.icon }}" alt="{{ fenlei.name }}"/>
						<span class="flink-item-name">{{ fenlei.name }}</span>
						<span class="flink-item-desc" title="{{ fenlei.info }}">{{ fenlei.info }}</span>
					</a>
				</div>

		</div>
	{% endfor %}
</div>
