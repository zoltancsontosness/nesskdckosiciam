<ion:partial view="header" />

<ion:page>
  <div class="page-header">
    <ion:title tag="h1" />
  </div>

  <ion:articles>
    <ion:article>
      <ion:title tag="h3" />

      <div class="row">
        <div class="col-md-12">
          <table class="table table-striped">
            <ion:element:match>
              <thead>
                <tr>
                  <th>
                    Dátum
                  </th>
                  <th>
                    Domáci
                  </th>
                  <th>
                    Výsledok
                  </th>
                  <th>
                    Hostia
                  </th>
                  <th>
                    Fotogaléria
                  </th>
                  <th>
                    Poznámka
                  </th>
                </tr>
              </thead>

              <tbody>
                <ion:items>
                  <tr>
                    <td scope="row">
                      <ion:date:value format="short" />
                    </td>
                    <td>
                      <ion:home:value/>
                    </td>
                    <td>
                      <ion:result:value/>
                    </td>
                    <td>
                      <ion:guests:value/>
                    </td>
                    <td>
                      <ion:gallery:links>
                        <a href="<ion:url />">
                          <i class="fa fa-picture-o"></i>
                        </a>
                      </ion:gallery:links>
                    </td>
                    <td>
                      <ion:note:value/>
                    </td>
                  </tr>
                </ion:items>
              </tbody>
            </ion:element:match>
          </table>
        </div>
      </div>
    </ion:article>
  </ion:articles>

</ion:page>

<ion:partial view="footer" />