<ion:partial view="header" />

<!-- Content START -->
  <div class="divPanel notop nobottom">
    <div class="row-fluid">
      <div class="span12">
        <h1><ion:page:title /></h1>         
		    <hr>
        <div id="headerSeparator2"></div>						
      </div>
    </div>
  </div>

  <div class="contentArea">
    <div class="divPanel notop page-content"> 
      <div class="row-fluid">
        <div class="span12" id="divMain">

        <ion:page><ion:articles><ion:article>
        <div class="span6 span6margin">				
          <div class="media">
            <a class="pull-left"><ion:article:medias type="picture" limit="1">
              <img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsible img-span6" /></ion:article:medias>
            </a>
            <div class="media-body">
              <h4 class="media-heading"><ion:title /></h4>
              <ion:content words="25" />
              <br /><br />
              <a class="btn btn-secondary pull-right" href=<ion:url parent="this" />>Zobraziť celý článok</a>
            </div>
          </div>
          <hr>
        </div>
        </ion:article></ion:articles></ion:page>
			
<!-- promo-box -->			
  <div class="row-fluid" style="margin-top: 30px;">
    <div class="span12">			
      <div class="shout-box">
      <ion:page id="kontakt-oznam"><ion:articles>
      <div class="row-fluid">
        <div class="span9">
          <h2><ion:article:title /></h2>
          <ion:article:subtitle tag="em" />               
        </div>
        <div class="span3">
          <a href="<ion:article:url />" class="btn btn-large btn-primary btn-right"><ion:article:content /></a>                
        </div>    
      </div>
      </ion:articles>  </ion:page>
      </div>
    </div>                
  </div>
                
        </div>
      </div>
<!--End Main Content Area here-->
			
<!--Edit Footer here-->
      <div id="footerInnerSeparator"></div>
    </div>
  </div>

<!-- Content END -->
  
<!-- This includes the footer view -->
<ion:partial view="footer" />