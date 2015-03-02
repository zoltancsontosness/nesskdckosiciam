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
          <!--Edit Main Content here-->
          <div class="row-fluid" style="margin-bottom: 30px;">
            <ion:page:articles>
            <ion:article:content />
            <div style="position: relative; width: 100%; height: 20px; clear: both;"></div>
            </ion:page:articles>
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