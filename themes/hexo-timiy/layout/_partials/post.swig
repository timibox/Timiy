{# 文章页 #}
{% macro tpl() %}
	<style>
		.content-area {
			background: #fff;
			width: 100%;
		}
		.post {
			width: 100%;
			margin: 0;
		}
	</style>
	<div id="primary" class="content-area">
		<main id="main" class="site-main">
			<div class="single_container">
				<div class="single_top_meta">
					<div class="single_ava">
						<a href="/author"><img src="/images/{% if page.fenlei %}{{ page.fenlei }}{% else %}thumbnail{% endif %}.png" class="avatar" width="50" height="50"></a>
					</div>
					<div class="single_meta_inner">
						<h1>
							<a href="/author">{{ page.title }}</a>
						</h1>
						<ul>
							<li class="single_date">
								<span class="iconfont icon-time-o"></span>
								<time itemprop="datePublished" datetime="{{ date_xml(page.date) }}">{{ date(page.date, 'YYYY-MM-D') }}</time>
							</li>
							<li class="single_cat">
								{% if page.categories %}
									{% for cate in page.categories %}
										<span class="iconfont icon-folder-o"></span>
										<a href="{{ url_for(cate.path) }}">{{ cate.name }}</a>
									{% endfor %}
								{% endif %}
							</li>
							<li class="single_cat">
								<span class="iconfont icon-tag-o"></span>
								{% for tag in page.tags %}
									<a href="{{ url_for(tag.path) }}" rel="tag">#{{ tag.name }}
									</a>
								{% endfor %}
							</li>
						</ul>
					</div>
				</div>
				<article id="post-5" class="post-5 post type-post status-publish format-aside hentry category-uncategorized post_format-post-format-aside">
					<div class="single_content">
						<div class="entry-content">
							<div class="post-full {% if not page.feature_img %}no-image{% endif %}">
								{% if page.feature_img %}
									<img src="{{ page.feature_img }}">
								{% endif %}
								<div class="post-full-content">
									<article id="photoswipe" class="markdown-body">
										{{ page.content }}
									</article>
								</div>
							</div>
						</div>
						<ul class="tags-postTags">
							{% for tag in page.tags %}
								<li>
									<a href="{{ url_for(tag.path) }}" rel="tag">#
										{{ tag.name }}</a>
								</li>
							{% endfor %}
						</ul>
						<footer class="post-footer">
							<div class="single-footer-inner">
								<div class="single_inner_like">
									<a data-slzanpd="23" class="specsZan slzanpd " style="cursor:pointer" title="给小站来点动力吧！">
										<span class="iconfont icon-androidfavorite"></span>
										<h4 class="count">0</h4>
									</a>
								</div>

								<div class="single_inner_views">
									<span class="count_view">
										<span class="iconfont icon-attention">
										<span id="/{{ page.path }}" class="leancloud_visitors" data-flag-title="{{ page.title }}">
										<i class="leancloud-visitors-count">Loading</i>										
										</span>
										</span>
								</div>
								</span>

								<div class="share">
									<div class="popover popover-bottom ">
										<a href="javascript:(0);">
											<span class="iconfont icon-androidshare"></span>
										</a>
										<div class="sharebox popover-container">
											<div class="card inner textcenter">
												<div class="sharebg" style="background-image: url({{ page.cover_img }});"></div>
												<ul class="items">
													<li class="item posturl">
														<span class="iconfont icon-link-o"></span>URL<input type="text" id="share-shorturl" placeholder="Get Short URL..." value="{{ url }}"></li>
													<li class="item wechatshare">
														<span class="iconfont icon-weixin"></span>微信分享<p>或手机端扫码查看网页<img src="https://api.qrserver.com/v1/create-qr-code/?size=150x150&amp;data={{ url }}"></li>
													<li class="item weiboshare">
														<span class="iconfont icon-weibo"></span>
														<a href="//service.weibo.com/share/share.php?url={{ url }}&amp;appkey={{ config.title }}&amp;title={{ page.title }}&amp;pic={{ page.cover_img }}&amp;ralateUid=&amp;language=zh_cn" rel="nofollow" onclick="window.open(this.href, 'weibo-share', 'width=550,height=335');return false;">微博分享</a>
														<span class="iconfont icon-QQ"></span>
														<a href="//connect.qq.com/widget/shareqq/index.html?url={{ url }}" rel="nofollow" onclick="window.open(this.href, 'qq-share', 'width=550,height=335');return false;">好友分享</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>

								<div class="copyright">
									<a class="hint--left" data-hint="原创文章，转载请注明出处">
										<i class="iconfont icon-c"></i>
									</a>
								</div>
							</div>

							<div class="prev-next clearfix">
								{% if page.prev %}
									<span class="postprev">
										<i class="iconfont icon-back-o"></i>
										<a href="{{ url_for(page.prev.path) }}" rel="prev">{{ page.prev.title }}</a>
									</span>
								{% endif %}
								{% if page.next %}
									<span class="postnext">
										<a href="{{ url_for(page.next.path) }}" rel="next">{{ page.next.title }}</a>
										<i class="iconfont icon-forward-o"></i>
									</span>
								{% endif %}
							</div>
						</footer>
					</div>


				</article>

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
	</div>
{% if theme.photoswipe %}
	{% include "public/photoswipe.swig" %}
{% endif %}	
{% endmacro %}
