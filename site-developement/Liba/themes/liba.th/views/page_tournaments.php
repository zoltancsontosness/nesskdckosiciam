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
            <ion:element:tournament>
              <thead>
                <tr>
                  <th>
                    Dátum
                  </th>
                  <th>
                    Názov podujatia
                  </th>
                  <th>
                    Skupina
                  </th>
                  <th>
                    Umiestnenie
                  </th>
                  <th>
                    Fotogaléria
                  </th>
                  <th>
                    Prílohy
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
                      <ion:name:value/>
                    </td>
                    <td>
                      <ion:group:value/>
                    </td>
                    <td>
                      <ion:place:value/>
                    </td>
                    <td>
                      <ion:gallery:links>
                        <a href="<ion:url />">
                          <i class="fa fa-picture-o"></i>
                        </a>
                      </ion:gallery:links>
                    </td>
                    <td>
                      <ion:other:value/>
                    </td>
                  </tr>
                </ion:items>
              </tbody>

            </ion:element:tournament>
          </table>
        </div>
      </div>
    </ion:article>
  </ion:articles>

</ion:page>

<ion:partial view="footer" />