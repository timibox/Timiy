<section class="links-main">
	<div class="items">
		<div class="grouping-title">
			<h3>
				<i class="iconfont icon-dialog-o"></i>Me</h3>
		</div>
		<div class="link-cats">
			{% for link in site.data.links.me %}
				<div class="item">
					<div class="link-avatar">
						<a href="{{ link.url }}" target="_blank"><img alt="" src="{{ link.avatar }}" class="avatar avatar-80 photo" height="80" width="80"></a>
					</div>
					<div class="info">
						<h3 class="name">
							<a href="{{ link.url }}" target="_blank">{{ link.name }}<i class="iconfont icon-Raidobox-selectedRai"></i>
							</a>
						</h3>
						<div class="meta button">
							<a href="{{ link.url }}" target="_blank">{{ link.url }}</a>
						</div>
					</div>
					<div class="description">{{ link.info }}</div>
				</div>
			{% endfor %}
		</div>
		<div class="grouping-title">
			<h3>
				<i class="iconfont icon-dialog-o"></i>友邻网站</h3>
		</div>
		<div class="link-cats">
			{% for link in site.data.links.to %}
				<div class="item">
					<div class="link-avatar">
						<a href="{{ link.url }}" target="_blank"><img alt="" src="{{ link.avatar }}" class="avatar avatar-80 photo" height="80" width="80"></a>
					</div>
					<div class="info">
						<h3 class="name">
							<a href="{{ link.url }}" target="_blank">{{ link.name }}<i class="iconfont icon-Raidobox-selectedRai"></i>
							</a>
						</h3>
						<div class="meta button">
							<a href="{{ link.url }}" target="_blank">{{ link.url }}</a>
						</div>
					</div>
					<div class="description">{{ link.info }}</div>
				</div>
			{% endfor %}
		</div>
		<div class="grouping-title">
			<h3>
				<i class="iconfont icon-dialog-o"></i>添加友情链接:</h3>
			<p>留言添加网站信息样例：</p>
			<pre class="language-bash" data-language="bash"><code class="language-bash">-name: Timiy
  url: https://timiy.cn
  info: 一杯茶 一包烟 一行代码写一天
  avatar: https://timiy.cn/images/logo.jpg</code></pre>
		</div>
	</section>
