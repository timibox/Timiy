{% macro tpl() %}
	<header class="page-header" style="background-image: url(&quot;https://www.ninaner.com/wp-content/themes/Ninan/img/default.jpg&quot;);" data-bg=" url(https://www.ninaner.com/wp-content/themes/Ninan/img/default.jpg)" data-nclazyload="true" data-was-processed="true"><meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
		<div class="page_meta">
			<h1 class="entry-title">标签</h1>
		</div>
	</header>
	<div id="site-main" class="site-main outer" role="main">
		<div class="inner">
			<div class="post-feed">
				<article class="post-card post no-image custom-page">
					<article class="post-full no-image">
						<section class="post-full-content page-full-content">
							<div id="photoswipe" class="markdown-body">
								{{ tagcloud({show_count: true}) }}
							</div>
						</section>
					</article>
				</article>
			</div>
		</div>
		<section id="comments" class="comments">
			<div class="comments-main">
				{% if theme.comment %}
					<div class="inner">
						<div id="comment"></div>
					</div>
				{% endif %}
			</div>
		</section>
	</div>
{% endmacro %}
