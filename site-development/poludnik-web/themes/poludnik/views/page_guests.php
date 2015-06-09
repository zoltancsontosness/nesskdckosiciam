<ion:partial view="header" />

<div class="page-header">
  <ion:page:title tag="h1" class="page_title" />
</div>

<div class="row">
  <div class="col-xs-12 visible-xs">
    <div class="dropdown">
      <h2 class="dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
        Filter :
        <ion:category:current:title />
        <span class="glyphicon glyphicon-chevron-down"></span>
      </h2>

      <ion:page:categories tag="ul" active_class="my-active-class" class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
        <li role="presentation">
          <a <ion:category:is_active> class="<ion:category:active_class />" </ion:category:is_active> href="<ion:category:url />">
            <ion:category:title />
          </a>
        </li>
      </ion:page:categories>
    </div>
    
    <br />
  </div>

  <div class="col-xs-12 col-sm-8 col-md-9">
    <ion:articles>
      <ion:article>
        <a href="<ion:article:url />">
          <div class="col-md-4 col-sm-6 ">
            <div class="thumbnail article_hoverable responsive-element text-center">
              <ion:medias type="picture" limit="1">
                <img src="<ion:media:src size="200" method="adaptive" />" alt="<ion:article:title />" />
              </ion:medias>
              <div class="caption">
                <ion:title tag="h2" class="dark" />
              </div>
            </div>
          </div>
        </a>
      </ion:article>
    </ion:articles>
  </div>

  <div class="col-sm-4 col-md-3 hidden-xs">
    <ul class="list-group">
      <li class="list-group-item">
        <ion:page id="hostia">
          <a href="<ion:url />">
            <p class="list-item">
              <ion:lang key="guests_all" />
            </p>
          </a>
        </ion:page>
      </li>
      <ion:page:categories>
        <li class="list-group-item <ion:category:is_active> active </ion:category:is_active>">
          <a href="<ion:category:url />">
            <ion:category:title tag="p" class="list-item" />
          </a>
        </li>
      </ion:page:categories>
    </ul>
  </div>
</div>

<ion:partial view="footer" />