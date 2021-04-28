{# 插件 - 侧边栏 #}
	<aside id="secondary" class="widget-area shadow">
		<div class="widget">
			<h3 class="widget-title">{{ theme.sidebar.themeinfo }}</h3>
			<img width="525" height="350" src="{{ theme.sidebar.themeimg }}" class="image wp-image-3025 attachment-full size-full loaded" alt="" loading="lazy" style="max-width: 100%; height: auto;" data-src="{{ theme.sidebar.themeimg }}" data-nclazyload="true" data-srcset="{{ theme.sidebar.themeimg }} 525w, {{ theme.sidebar.themeimg }} 300w, {{ theme.sidebar.themeimg }} 200w" data-sizes="(max-width: 525px) 100vw, 525px" sizes="(max-width: 525px) 100vw, 525px" srcset="{{ theme.sidebar.themeimg }} 525w, {{ theme.sidebar.themeimg }} 300w, {{ theme.sidebar.themeimg }} 200w" data-was-processed="true">
		</div>
		<div class="widget">
			<h3 class="widget-title">热门推荐</h3>
			<ul class="items hot-comment">
				<div class="d250x90" id="AD"><a rel="nofollow" target="_blank" width="250" height="90" href="{{ theme.sidebar.AD1URL }}" title="{{ theme.sidebar.AD1title }}"><img src="{{ theme.sidebar.AD1IMG }}" srcset="{{ theme.sidebar.AD1IMG }} 1x,{{ theme.sidebar.AD1IMG }} 2x"></a>
				</div>
				<div class="d250x90" id="AD"><a rel="nofollow" target="_blank" width="250" height="90" href="{{ theme.sidebar.AD2URL }}" title="{{ theme.sidebar.AD2title }}"><img src="{{ theme.sidebar.AD2IMG }}" srcset="{{ theme.sidebar.AD2IMG }} 1x,{{ theme.sidebar.AD2IMG }} 2x"></a>
				</div>
				<div class="d250x90" id="AD"><a rel="nofollow" target="_blank" width="250" height="90" href="{{ theme.sidebar.AD3URL }}" title="{{ theme.sidebar.AD3title }}"><img src="{{ theme.sidebar.AD3IMG }}" srcset="{{ theme.sidebar.AD3IMG }} 1x,{{ theme.sidebar.AD3IMG }} 2x"></a>
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
