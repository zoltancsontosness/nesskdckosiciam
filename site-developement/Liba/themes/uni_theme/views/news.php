<div class="row">
	<div class="col-md-12">
		<h1>Oznamy</h1>
		<hr />
		<ion:page id="news">
			<ion:articles limit="4">
				<article class="col-md-3">
					<ion:article:title tag="h5" />
					<i><ion:article:date format="d.m.Y" tag="span" /></i>
					<ion:article:content />
				</article>
			</ion:articles>
		</ion:page>
	</div>
</div>