{# 首页、归档、分类、标签 #}
{% macro tpl() %}
	<div id="primary" class="content-area grid-content-area">
		<main id="main" class="site-main">
			<div id="main-box" class="loop ">
				{% for post in page.posts %}
				
				
				<article id="post-4374" class="item  post-4374 post type-post status-publish format-standard hentry category-idea" style="display:inline-block">
				<div class="loop_ava">
				{% if theme.author_image %}
		<a href="/about" class="topic-thumb bg tips-right hint--top" style="background-image: url({{ theme.author_image }});" data-hint="{{ config.author }}" data-bg=" url({{ theme.author_image }})" data-nclazyload="true" data-was-processed="true"></a>
		{% else %}
		<a href="/about" class="topic-thumb bg tips-right hint--top" style="background-image: url({{ theme.author_image }});" data-hint="{{ config.author }}" data-bg=" url({{ theme.author_image }})" data-nclazyload="true" data-was-processed="true"></a>
		{% endif %}
		</div>

										
									

	
	<div class="loop-content">
		<div class="top_meta_inner">
			<h1 class="entry-title"><a href="{{ url_for(post.path) }}">{{ post.title }}</a></h1>
			<div class="date_meta">
				<span class="nickname">
				{% if post.categories %}
				{% for cate in post.categories %}
				{{ cate.name }}
				{% endfor %}
				未分类
				{% endif %}
				</span>
				<time itemprop="datePublished" datetime="2020-09-27T11:04:12+08:00"> - {{ date(post.date, null) }}</time>
</div>
			<p>									{% set num = 50 %}
									{% if not post.cover_img %}
										{% set num = 50 %}
									{% endif %}
									{% if loop.first %}
										{% set num = 35 %}
									{% endif %}
									{% set content = post.content | striptags %}
									{% if post.summary %}
										{% set content = post.summary %}
									{% endif %}
									{{ content.substring(0, num) }}
									{% if content.length > num %}...
									{% endif %}</p>
		</div>
		<div class="feature_img">
		<a href="{{ url_for(post.path) }}">
		{% if post.cover_img %}
		<img src="{{ post.cover_img }}" data-src="{{ post.cover_img }}" data-nclazyload="true" class="loaded" data-was-processed="true">
		{% else %}
		<img src="/images/thumbnail.png">
		{% endif %}
		<i class="iconfont icon-fullscreen-o"></i>
		<div class="overlay"></div>
		</a>
		</div>
	</div>

	<footer class="entry-footer"><ul class="loop_meta">
<li class="count_comment">
<span class="iconfont icon-mark"></span>9</li>
			<li class="count_view">
<span class="iconfont icon-attention"></span>998</li>
			<li class="count_like">
<span class="iconfont icon-appreciate"></span>2</li>
			<li class="count_image">
<span class="iconfont icon-album"></span><script type="text/javascript">
parseInt(100*Math.random());
</script></li>
			
		</ul>
<a class="load_single hint--top" href="{{ url_for(post.path) }}" data-hint="{{ Math.round(strip_html(post.content).length/500) }} READ MORE"><span class="iconfont icon-more-transverse-o"></span></a>
	</footer>	
				{% endfor %}
			</article>

		</div>
		<div id="pagination">
			<div class="post-paging"></div>
		</div>
	</main>
	<!-- #main -->
	</div>
	{% if theme.widgets.sidebar %}
	{% include 'widget/sidebar.swig' %}
	{% endif %}
{# 显示页号 #}
{% if config.index_generator.per_page !== 0 %}
	<div class="outer">
		<nav class="pagination">
			{% if page.total > 1 %}
				<nav class="page-nav">
					{{ paginator({prev_text: '← PREV', next_text: 'NEXT →'}) }}
				</nav>
			{% endif %}
		</nav>
	</div>
{% endif %}{% endmacro %}
