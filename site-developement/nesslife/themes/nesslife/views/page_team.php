<ion:partial view="header" />

    <div class="row">
      <div class="col-sm-12">
        <ion:page:title tag="h1" />
        <hr />
      </div>
    </div>

    <ion:page>
      <div class="row teamMembers">
        <ion:articles>
          <ion:article>
            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
            <div class="thumbnail">
              <ion:medias type="picture">
                <a href="<ion:media:src />" data-lightbox="roadtrip" data-title="<ion:media:title />">
                  <img src="<ion:media:src size="272, 320" method="adaptive" />" alt="<ion:media:title />" class="img-responsive">
                </a>
              </ion:medias>
              <span><h1><ion:article:title /></h1></span>
              <div class="memberInfo">
                <ion:element:team-member-info>
                  <h2><ion:items:position:value /></h2>
                  <span class="glyphicon glyphicon-earphone" aria-hidden="true"></span><span><ion:items:phone:value /></span><br>
                  <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><span><ion:items:e-mail:value /></span>
                </ion:element:team-member-info>
                <div class="text-center">
                  <button type="button" class="btn btn-info" data-toggle="modal" data-target="#moreInfoModal<ion:article:id />">More info...</button>
                </div>
              </div>
              <div class="modal fade" id="moreInfoModal<ion:article:id />" role="dialog">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                      <h4 class="modal-title"><ion:article:title /></h4>
                    </div>
                    <div class="modal-body">
                      <p><ion:article:content /></p>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            </div>
          </ion:article>
        </ion:articles>
      </div>
    </ion:page>

<ion:partial view="footer" />