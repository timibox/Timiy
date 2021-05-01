{# 插件 - 关于 #}
<div class="home_left_bar_inner shadow">
	<div class="blog_card">
		<div class="blog_card_bg" style="background-image:url({{ theme.author_bg }});">
			<span>
				<h1>{{ config.title }}</h1>
				<p>@{{ config.author }}</p>
			</span>
			<img src="{{ theme.author_image }}">
		</div>
		<div class="bg_des">
			<p>{{ theme.author_bio }}</p>
		</div>
		<div class="no-pjax">
			<div class="bg_card1">
				<div class="inbox posts_box">
					<div class="inner">
						<a href="/archives">
							<span>
								<i class="iconfont icon-edit-o"></i>
								文章</span>
							&nbsp;&nbsp;</a>
						{{ site.posts.length }}</div>
				</div>
				<div class="inbox friends_box">
					<a href="/categories">
						<span>
							<i class="iconfont icon-link-o"></i>
							分类</span>
						&nbsp;&nbsp;</a>
					{{ site.categories.length }}</div>
				<div class="inbox visits_box">
					<a href="/tags">
						<span>
							<i class="iconfont icon-seeuser"></i>
							标签</span>
						&nbsp;&nbsp;</a>
					{{ site.tags.length }}</div>
			</div>
		</div>
		<ul class="bg_list">
			<li>
				<i class="iconfont icon-position-o"></i>
				{{ theme.author_location }}</li>
			<li>
				<i class="iconfont icon-link-o"></i>
				{{ theme.author_url }}</li>
			<li>
				<i class="iconfont icon-history-o"></i>网站成立 293 天</li>
		</ul>
		<div class="info_bu">
			<div class="item">
				<a class="button_link gradient hint--top" href="E-mmail@qq.com" data-hint="E-mmail@qq.com">邮箱联系</a>
			</div>
			<div class="item">
				<a class="button_link gradient hint--top" href="http://wpa.qq.com/msgrd?v=3&amp;uin=4370142&amp;site=qq&amp;menu=yes" data-hint="QQ联系我" target="_blank">即时联系</a>
			</div>
		</div>
	</div>
</div>
