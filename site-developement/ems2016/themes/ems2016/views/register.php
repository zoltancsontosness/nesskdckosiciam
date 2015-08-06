<ion:partial view="header" />

  <div class="section_2">
    <ul class="social_media_list button-list row">
      <li class="col-xs-12 col-md-4 col-md-offset-2">
        <a href="<ion:page:url id="pridanie-sportoviska"/>" class="btn-block rss">
          <i class="fa fa-pencil"></i>
          <div><ion:page:title id="pridanie-sportoviska"/></div>
          <br />
          <p><ion:page:subtitle id="pridanie-sportoviska"/></p>
        </a>
      </li>
      <li class="col-xs-12 col-md-4">
        <a href="<ion:page:url id="pridanie-podujatia"/>" class="btn-block bg-yellowgreen">
          <i class="fa fa-pencil"></i>
          <div><ion:page:title id="pridanie-podujatia"/></div>
          <br />
          <p><ion:page:subtitle id="pridanie-podujatia"/></p>
        </a>
      </li>
      <!--
      <li class="col-xs-12 col-md-4">
        <a href="#" class="btn-block bg-yellowgreen">
          <i class="fa fa-pencil"></i>
          <div>Pridanie klubu</div>
          <br />
          <p>Registrujte klub</p>
        </a>
      </li>
      -->
    </ul>      
  </div>
  <div class="section_2 row">
    <h1 class="section_title text-center"><ion:page:articles:article:title limit="1"/></h1>
    <div class="col-xs-12 text-justify block-underline">
      <ion:page:articles:article:content limit="1"/>
    </div>
  </div>
  <div class="section_2 row">
    <h1 class="section_title text-center"><ion:page:title id="napisali-o-nas"/></h1>
    <div class="col-xs-12 col-md-8 col-md-offset-2">
      <div class="owl-demo-2 owl-carousel_2 var2">
        <ion:page id="napisali-o-nas">
          <ion:articles:article>
            <div class="item">
              <div class="blockquotes">
                <div><ion:content /></div>
                <div><ion:title /></div>
              </div>
            </div>
          </ion:articles:article>
        </ion:page>
      </div>      
    </div>
  </div>
 

<ion:partial view="footer" />