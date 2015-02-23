<ion:partial view="header" />

  <div class="divPanel notop nobottom">
    <div class="row-fluid">
      <div class="span12">
      <div id="headerSeparator"></div>
      <!--Edit Camera Slider here-->
      <div class="camera_full_width">
        <div id="camera_wrap" class="shadow">
        <ion:page:articles type="slider"><ion:article:medias type="picture">
          <div data-src="<ion:media:src />" ><div class="camera_caption fadeFromBottom cap1"><ion:article:subtitle /></div></div>
        </ion:article:medias></ion:page:articles>
        </div>
        <br style="clear:both"/><div style="margin-bottom:40px"></div>
      </div>
      <!--End Camera Slider here-->
      <div id="divHeaderText" class="page-content">
        <div id="divHeaderLine1"><ion:page:title /></div>
          <br />
        <div id="divHeaderLine2"><ion:page:subtitle /></div><br />                    
      </div>
      <hr>
      <div id="headerSeparator2"></div>						
      </div>
    </div>
  </div>

  <div class="contentArea">
    <div class="divPanel notop page-content"> 
      <div class="row-fluid">
        <div class="span12" id="divMain">
        <!--Edit Main Content here-->
        <div class="row-fluid">
        <ion:page:articles type="home-info">                                                            
          <div class="span4">
            <div class="box">
            <ion:article:medias type="picture">
              <img src="<ion:media:src />" alt="<ion:media:alt />" class="img-circle" style="max-height: 160px;" />
            </ion:article:medias>
            <h4 class="title"><ion:article:title /></h4> 
        <ion:article:content />
            </div>
          </div> 
        </ion:page:articles>
        </div>

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