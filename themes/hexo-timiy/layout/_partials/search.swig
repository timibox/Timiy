{# search #}
{% if theme.local_search %}
	<div id="search" style="display:none;">
		<div class="gl_overlay"></div>
		<div class="search_form_inner ea_content_modal animate slideUp">
			<a href="javascript:closeDivFun()" class="close_search">
				<i class="iconfont icon-close-o"></i>
			</a>
			<div class="search-bar">
				<i class="iconfont icon-search-o"></i>
				<input id="local-search-input" class="search-input" type="text" name="search" placeholder="{{ __('search') }} ...">
			</div>
			<div class="search_tags">
				<div class="search_tags_list" style="line-height:30px">
					<h1>最热关键词</h1>
					<a href="#" title="akea Tag" class="item">Hexo</a>
					<a href="#" title="emlog Tag" class="item">我是大帅逼</a>
					<a href="#" title="默认 Tag" class="item">默认</a>
					<a href="#" title="EASTER Tag" class="item">Steam</a>
					<a href="#" title="PHP Tag" class="item">PHP</a>
				</div>
				<div id="local-search-result"></div>
			</div>
		</div>
	</div>
{% endif %}
