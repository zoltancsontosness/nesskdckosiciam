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

  <!--Edit Main Content here-->
  <div class="row-fluid">
    <div class="span12" id="divMain">  
    <div class="yoxview">
    <ion:page:articles><ion:article:medias type="picture">
    <div class="span4 box span4margin">
      <a href="<ion:media:src />"><img src="<ion:media:src />"  class="img-polaroid" alt="<ion:media:alt />" style="max-height: 210px;" /></a>
    </div>
    </ion:article:medias></ion:page:articles>
    </div>
    </div>
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
			
<!--Edit Footer here-->
      <div id="footerInnerSeparator"></div>
    </div>
  </div>

<!-- Content END -->
  
<!-- This includes the footer view -->
<ion:partial view="footer" />