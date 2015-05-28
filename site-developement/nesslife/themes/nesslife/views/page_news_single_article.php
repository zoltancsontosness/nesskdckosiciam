<ion:partial view="header" />
    
    <div class="row">
      <div class="col-sm-12">
        <ion:article:title tag="h1" />
        <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
        <ion:article:date format="d/m/Y" tag="span" />
        <span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
        <ion:article:categories:list link="false" separator=" / " tag="span" />
        <hr />
      </div>
    </div>
    
    <div class="row">
      <div class="col-sm-12">
        <ion:article:content />
        <hr />
      </div>
    </div>

<ion:partial view="footer" />