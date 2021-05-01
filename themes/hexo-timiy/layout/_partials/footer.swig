{# footer #}
{% include "search.swig" %}
<div class="footer_tool">
	<a class="go_top item" style="transform: translate(0px, 0px); transition: all 0.4s ease-in-out 0s; opacity: 1;">
		<i class="iconfont icon-extend-o"></i>
	</a>
</div>
<footer id="colophon" class="site-footer">
	<div class="site-info">
		<div class="copyright_content">
			<li class="item">
				<a href="#">{{ title }}</a>
				Copyright © 2020</li>
			<li class="item"></li>
			<div class="load_time">Design By
				<a href="https://www.htmlmi.com" target="_blank">Timiy</a>
			</div>
		</div>
	</div>
</footer>
<script>
function showDivFun() {
document.getElementById('search').style.display = 'block';
}

function closeDivFun() {
document.getElementById('search').style.display = 'none';
}
</script>
