    <section id="news" class="container-fluid">
      <div class="container">
        <div class="row">
          <ion:page id="news">
            <div class="col-sm-6">
              <div class="row">
                <ion:articles limit="1">
                  <ion:article>
                    <div class="col-sm-12 news-item big-news-item">
                      <span><ion:article:date format="F d, Y" /> / News</span>
                      <ion:article:title tag="h2" />
                      <ion:article:content />
                    </div>
                  </ion:article>
                </ion:articles>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="row">
                <ion:articles range="2, 3">
                  <ion:article>
                    <div class="col-md-6 news-item small-news-item">
                      <span><ion:article:date format="F d, Y" /> / News</span>
                      <ion:article:title tag="h2" />
                    </div>
                  </ion:article>
                </ion:articles>
              </div>
              <div class="row">
                <ion:articles range="4, 5">
                  <ion:article>
                    <div class="col-md-6 news-item small-news-item">
                      <span><ion:article:date format="F d, Y" /> / News</span>
                      <ion:article:title tag="h2" />
                    </div>
                  </ion:article>
                </ion:articles>
              </div>
            </div>
          </ion:page>
        </div>
      </div>
    </section>