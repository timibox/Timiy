{# 首页、归档、分类、标签 #}
{% macro tpl() %}
	<div id="primary" class="content-area grid-content-area">
		<main id="main" class="site-main">
			<div id="main-box" class="loop ">
				{% for post in page.posts %}	
				<article class="item post type-post status-publish format-standard hentry category-idea" style="display:inline-block">
				<div class="loop_ava">
				{% if post.fenlei %}
				<a href="/categories/{{ post.fenlei }}" class="topic-thumb bg tips-right hint--top" style="background-image: url(/images/{{ post.fenlei }}.png);" data-hint="{{ post.fenlei }}"></a>
				{% else %}
				<a href="/categories" class="topic-thumb bg tips-right hint--top" style="background-image: url(/images/thumbnail.png);" data-hint="未分类"></a>
				{% endif %}
		</div>
	<div class="loop-content">
		<div class="top_meta_inner">
			<h1 class="entry-title"><a href="{{ url_for(post.path) }}">{{ post.title }}</a></h1>
			<div class="date_meta">
				<span class="nickname">
				{% if post.categories %}
				{% for cate in post.categories %}
				<span class="iconfont icon-folder-o"></span>
				{{ cate.name }}
				{% endfor %}			
				{% endif %}
				</span>
				<time itemprop="datePublished" datetime="2020-09-27T11:04:12+08:00"> - <span class="iconfont icon-time-o"></span>{{ date(post.date, null) }}</time>
</div>
			<p>						{% set num = 80 %}
									{% if not post.cover_img %}
										{% set num = 80 %}
									{% endif %}
									{% if loop.first %}
										{% set num = 55 %}
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
		<img src="{{ post.cover_img }}" data-src="{{ post.cover_img }}" class="loaded" data-was-processed="true">
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
<span class="iconfont icon-tag-o"></span>
{% if post.categories %}
{% for tag in post.tags %}
<a href="{{ url_for(tag.path) }}" rel="tag">#{{ tag.name }}</a>
{% endfor %}
{% endif %}
</li>
			<li class="count_image">
<span class="iconfont icon-album"></span><script type="text/javascript">
parseInt(100*Math.random());
</script></li>
			
		</ul>
<a class="load_single hint--top" href="{{ url_for(post.path) }}" data-hint="阅读时间 {{ Math.round(strip_html(post.content).length/500) }} 分钟"><span class="iconfont icon-more-transverse-o"></span></a>
	</footer>	
				
			</article>
		{% endfor %}
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
