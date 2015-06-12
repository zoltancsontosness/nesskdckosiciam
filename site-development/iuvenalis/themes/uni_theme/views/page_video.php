<ion:partial view="header" />

    <div class="row">
      <div class="col-md-12">
        <ion:page:title tag="h1" />
        <hr />
      </div>
    </div>
      
    <div class="row">       
      <ion:articles pagination="4">       
        <div class="col-md-12">                         
          <div class="media">                              
            <h3 class="media-heading"><ion:article:title /></h3>                              
              <p><a href="<ion:article:url />" class="btn btn-primary pull-button" role="button">Viac informácií</a></p>               
          </div>
        </div>                          
      </ion:articles>
      <ion:articles:pagination pagination="4" />         
    </div>
            
<ion:partial view="footer" />