<!DOCTYPE html>
<html lang="sk">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Form page</title>
 
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <!-- my CSS -->
    <link href="css/style.css" rel="stylesheet">

    <!-- my jQuery -->
    <script src="js/jquery_functions.js"></script>
    
  </head>
  <body>

<div class="container">
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">Forms</a>
      </div>
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="#">Form #1</a></li>
          <li><a href="#">Form #2</a></li>
          <li><a href="#">Form #3</a></li>
          <li><a href="#">Form #4</a></li>
        </ul>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
  </nav>
  
  <!-- main content start -->
  <div class="jumbotron">
    <form>
      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label for="exampleInput">Názov projektu:</label>
            <input type="text" class="form-control" placeholder="Text input">
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label for="exampleInput">Názov organizácie, ktorá žiada o grant:</label>
            <input type="text" class="form-control" placeholder="Text input">
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label for="exampleInput">Sídlo organizácie:</label>
            <input type="text" class="form-control" placeholder="Text input">
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label for="exampleInput">Adresa:</label>
            <input type="text" class="form-control" placeholder="Text input">
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label for="exampleInput">Okres:</label>
            <input type="text" class="form-control" placeholder="Text input">
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label for="exampleInput">Kraj:</label>
            <input type="text" class="form-control" placeholder="Text input">
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label for="exampleInput">Meno štatutárneho zástupcu organizácie:</label>
            <input type="text" class="form-control" placeholder="Text input">
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label for="exampleInput">Meno koordinátora projektu:</label>
            <input type="text" class="form-control" placeholder="Text input">
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label for="exampleInput">Dátum začiatku (najskôr od 24. marca 2014) realizácie projektu:</label>
            <input type="text" class="form-control" placeholder="Text input">
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label for="exampleInput">Meno koordinátora projektu:</label>
            <input type="text" class="form-control" placeholder="Text input">
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="form-group">
            <label for="exampleInput">Čo chcete robiť? (max. 1 veta)</label>
            <textarea class="form-control" rows="2"></textarea>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="form-group">
            <label for="exampleInput">Prečo to chcete robiť? (max. 3 vety)</label>
            <textarea class="form-control" rows="2"></textarea>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="form-group">
            <label for="exampleInput">Ako to budete robiť? (max. 5 viet)</label>
            <textarea class="form-control" rows="2"></textarea>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="form-group">
            <label for="exampleInput">Zameranie projektu (zaškrtnite oblasť, ktorá je z vášho pohľadu najhlavnejšia):</label>
            <div class="checkbox">
              <label>
                <input type="checkbox" value="">
                Bezpečnosť
              </label>
            </div>
            <div class="checkbox">
              <label>
                <input type="checkbox" value="">
                Deti a mládež
              </label>
            </div>
            <div class="checkbox">
              <label>
                <input type="checkbox" value="">
                Environmentálne programy a vzdelávanie
              </label>
            </div>
            <div class="checkbox">
              <label>
                <input type="checkbox" value="">
                Kultúrna identita a cezhraničná spolupráca
              </label>
            </div>
            <div class="checkbox">
              <label>
                <input type="checkbox" value="">
                Šport
              </label>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label for="exampleInput">Požadovaná výška podpory v EUR:</label>
            <input type="text" class="form-control" placeholder="Text input">
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label for="exampleInput">Výška celkového rozpočtu projektu v EUR:</label>
            <input type="text" class="form-control" placeholder="Text input">
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="form-group">
            <label for="exampleInput">Vklad žiadateľa (a jeho partnerských organizácií) v %:</label>
            <input type="text" class="form-control" placeholder="Text input">
          </div>
        </div>
      </div>
    </form>
  </div>
</div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.js"></script>      
    
  </body>
</html>