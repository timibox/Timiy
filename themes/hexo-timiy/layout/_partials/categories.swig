<div class="flink" id="article-container">
	{% for fenlei in site.data.categories.menu %}
		<h2>{{ fenlei.title }}</h2>
		<div class="flink-desc">
			{{ fenlei.desc }}
		</div>
		<div class="flink-list">


			{% for fenlei2 in site.data.categories.{{ fenlei.id }} %}
				<div class="flink-list-item">
					<a href="{{ fenlei2.link }}" rel="external nofollow noreferrer" title="{{ fenlei2.name }}" target="_blank"><img src="{{ fenlei2.icon }}" alt="{{ fenlei.name }}"/>
						<span class="flink-item-name">{{ fenlei2.name }}</span>
						<span class="flink-item-desc" title="{{ fenlei2.info }}">{{ fenlei2.info }}</span>
					</a>
				</div>
			{% endfor %}
		</div>
	{% endfor %}
</div>
