    <div class="loginContainer clearfix">
      <img src="<ion:theme_url/>assets/images/nesslife-logo.png" class="img-responsive" alt="NESSlife">
 
      <!--
          Global Success message
          Displayed if the user successfully logged in
      -->
      <ion:form:login:validation:success tag="p" class="green" />
   
      <!--
         Global Error message
         Validation wasn't OK or credentials aren't good
      -->
      <ion:form:login:validation:error tag="p" class="input-error" />
   
      <!--
          Login Form
          Only displayed if the user isn't logged in
      -->

 
        <form method="post" action="">
 
          <!-- Name of the form : login -->
          <input type="hidden" name="form" value="login" />

          <!-- The email is used to log in the user -->
          <div class="form-group">
            <label for="email">Email</label>
            <input type="text" id="email" name="email" value="<ion:form:login:field:email />" class="form-control" />
            <ion:form:login:error:email tag="p" class="input-error" />
          </div>
 
          <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" class="form-control" />
            <ion:form:login:error:password tag="p" class="input-error" />
          </div>
          
          <input type="submit" value="Login" class="btn btn-default pull-right" />
        </form>

    </div><!-- /.loginContainer -->