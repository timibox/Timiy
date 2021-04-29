{# 插件 - 侧边栏 #}
<aside id="secondary" class="widget-area shadow">
	<div class="widget">
		<h3 class="widget-title">{{ theme.sidebar.themeinfo }}</h3>
		<a target="_blank" width="248" height="165" href="{{ theme.sidebar.themeurl }}" title="{{ theme.sidebar.themetitle }}">
			<img width="248" height="165" src="{{ theme.sidebar.themeimg }}"></a>
	</div>
	<div class="widget">
		<h3 class="widget-title">热门推荐</h3>
		<ul class="items hot-comment">
			<div class="d250x90" id="AD">
				<a rel="nofollow" target="_blank" width="250" height="90" href="{{ theme.sidebar.AD1URL }}" title="{{ theme.sidebar.AD1title }}"><img src="{{ theme.sidebar.AD1IMG }}" srcset="{{ theme.sidebar.AD1IMG }} 1x,{{ theme.sidebar.AD1IMG }} 2x"></a>
			</div>
			<div class="d250x90" id="AD">
				<a rel="nofollow" target="_blank" width="250" height="90" href="{{ theme.sidebar.AD2URL }}" title="{{ theme.sidebar.AD2title }}"><img src="{{ theme.sidebar.AD2IMG }}" srcset="{{ theme.sidebar.AD2IMG }} 1x,{{ theme.sidebar.AD2IMG }} 2x"></a>
			</div>
			<div class="d250x90" id="AD">
				<a rel="nofollow" target="_blank" width="250" height="90" href="{{ theme.sidebar.AD3URL }}" title="{{ theme.sidebar.AD3title }}"><img src="{{ theme.sidebar.AD3IMG }}" srcset="{{ theme.sidebar.AD3IMG }} 1x,{{ theme.sidebar.AD3IMG }} 2x"></a>
			</div>
		</ul>
	</div>
	<div class="widget">
		<h3 class="widget-title">TAGS</h3>
		<div class="tagcloud">
			{% include 'tagcloud.swig' %}
		</div>
	</div>
</aside>
