{# 插件 - 侧边栏 #}
<aside id="secondary" class="widget-area shadow">
	<div class="widget">
		<h3 class="widget-title">{{ theme.temesinfo.title }}</h3>
		<a target="_blank" width="248" height="165" href="{{ theme.temesinfo.url }}" title="{{ theme.temesinfo.title }}">
			<img width="248" height="165" src="{{ theme.temesinfo.img }}"></a>
	</div>
	<div class="widget">
		<h3 class="widget-title">热门推荐</h3>
		<ul class="items hot-comment">
			{% for ad in theme.adlist %}
			<div class="d250x90" id="AD">
				<a rel="nofollow" target="_blank" width="250" height="90" href="{{ ad.url }}" title="{{ ad.title }}"><img src="{{ ad.img }}"></a>
			</div>
			{% endfor %}
		</ul>
	</div>
	<div class="widget">
		<h3 class="widget-title">TAGS</h3>
		<div class="tagcloud">
			{% include 'tagcloud.swig' %}
		</div>
	</div>
</aside>
