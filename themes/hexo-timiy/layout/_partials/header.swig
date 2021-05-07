{# header 部分, 控制页面中显示头部图像、标题 #}
<div class="header-banner-box">
	<div id="cover" class="banner">
	<div class="site-header-content"><h1 class="site-title">{{ title }}</h1><span>———</span>
	<h2 class="site-description">
	{% if is_home() %}
	分享 互助 共赢 为创作而生
	{% elseif is_post() %}
		{% if page.categories %}
		{{ date(page.date, 'YYYY-MM-D') }} / 
		{% for cate in page.categories %}
		{{ cate.name }}
		{% endfor %}
		{% endif %}
	{% elseif is_category() %}
	分类
	{% endif %}
	</h2></div>
	</div>
</div>

