<ion:partial view="head" />
<header>
  <ion:partial view="navigation" />
</header>
<div class="container overflow-hidden">
	<ion:page>
		<section class="careers gutter-bottom row">
			<div class="col-md-9">
				<h1 class="hero hero-gutter"><ion:article:title /></h1>
				<ion:breadcrumb separator="" tag="ol" child-tag="li" class="breadcrumb" home="true" article="true"/>
			</div>		
			<div class="col-md-3"></div>		
			<div class="col-md-9 clearfix">
					<!-- Send cv messages -->
					<ion:form:send_cv:validation:success is="true">
            <div id="alert-message" class="alert alert-success">
              <ion:lang key="form_alert_success_title" tag="b" />
              <ion:lang key="form_alert_success_message" tag="" />
            </div>
       		</ion:form:send_cv:validation:success>
	        <ion:form:send_cv:validation:error is="true" >
            <div id="alert-message" class="alert alert-danger">
              <ion:lang key="form_alert_error_title" tag="b" />
              <ion:lang key="form_alert_error_message" tag="" />
            </div>
      		</ion:form:send_cv:validation:error>

					<!-- Refer messages -->
      		<ion:form:refer:validation:success is="true">
            <div id="alert-message" class="alert alert-success">
                <ion:lang key="form_alert_success_title" tag="b" />
                <ion:lang key="form_alert_success_message" tag="" />
            </div>
          </ion:form:refer:validation:success>
	        <ion:form:refer:validation:error is="true" >
	          <div id="alert-message" class="alert alert-danger">
	              <ion:lang key="form_alert_error_title" tag="b" />
	              <ion:lang key="form_alert_error_message" tag="" />
	          </div>
	    		</ion:form:refer:validation:error>
				
				<div id="content">
					<ion:article:content />
					<div class="fb-share-button" data-href="<ion:page:article:url />" data-layout="button"></div>
				</div>
				<!-- CV form -->
				<div id="form" class="col-sm-12 hide gutter-bottom-small">
					<div class="row">
						<form name="send_cv" action="#message" method="post" enctype="multipart/form-data">
							<input type="hidden" name="form" value="send_cv" />
							<label for="email">Your Email</label>
							<input name="email" type="text" id="email" class="form-control input-lg" placeholder="Email...">
							<ion:form:send_cv:error:email tag="small" class="error" />
							<div class="form-group">
								<label for="position">Position</label>
								<input name="position" type="text" id="position" class="form-control input-lg" value="<ion:article:title />" readonly="readonly" />
							</div>
							<div class="form-group">
								<label for="cv">Here upload your CV</label>
								<div class="input-group">
									<span class="input-group-btn">
										<span class="btn btn-blue btn-file btn-lg">
											Browse CV&hellip; 
											<input name="cv" type="file" id="cv">
										</span>
									</span>
									<input type="text" class="form-control input-lg" readonly>
								</div>
								<small class="help-block">Available extensions: pdf, doc, docx </small>
								<ion:form:send_cv:error:cv tag="small" class="error" />
							</div>
							<button type="submit" class="btn btn-green btn-lg btn-block">Send Now!</button>
						</form>
					</div>
				</div>
				<!-- Refer form -->
				<div id="refer-form" class="col-sm-12 hide">
					<div class="row">
						<form name="refer" action="#message" method="post">
								<p>Refer to your friend. NESS KDC will not use the email addresses for other purposes.</p>
								<input type="hidden" name="form" value="refer" />
								<div class="form-group">
									<label for="sender-email">Your Email</label>
									<input name="sender-email" type="text" id="sender-email" class="form-control input-lg" placeholder="Your Email..." />
									<ion:form:refer:error:sender-email tag="small" class="error" />
								</div>
								<div class="form-group">
									<label for="email">Your Friend Email</label>
									<input name="email" type="text" id="email" class="form-control input-lg" placeholder="Your Friend Email..." />
									<ion:form:refer:error:email tag="small" class="error" />
								</div>
								<div class="form-group">
									<label for="position">Position</label>
									<input name="position" type="text" id="position" class="form-control input-lg" value="<ion:article:title />" readonly="readonly" />
									<ion:form:refer:error:position tag="small" class="error" />
								</div>
								<div class="form-group">
									<label for="message">Message</label>
									<textarea name="message" id="message" class="form-control input-lg">Hello my friend, &#13;I found this job that may interest you: </textarea>
									<ion:form:refer:error:message tag="small" class="error" />
								</div>
								<input name="job-desc" type="hidden" value="<ion:article:subtitle />" />
								<input name="job-link" type="hidden" value="<ion:page:article:url />" />
							<button type="submit" class="btn btn-green btn-lg btn-block">Send Now!</button>
						</form>
					</div>
				</div>
				
			</div>
			<div class="col-md-3">
				<div class="gutter-bottom-small">
					<h2 class="right-column-heading text-center">Are you interested? </h2>
					<a href="#" id="send-cv" class="btn btn-green btn-lg btn-block btn-big send-cv">Send Your CV Now!</a>
					<a href="#" id="more-info" class="btn btn-transparent blue border-blue btn-lg btn-big btn-block send-cv hide">Back to info</a>
					<a href="#" id="refer-to-friend" class="btn btn-transparent blue border-blue btn-lg btn-big btn-block">Refer to friend</a>
				</div>
				<?php if('<ion:article:medias:count />' > 0) : ?>
					<div class="separator gutter-bottom-small"></div>
					<ion:article:medias type="picture" limit="1">
						<img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive center"/>
					</ion:article:medias>
				<?php endif; ?>
			</div>
		</section>
	</ion:page>
</div>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.3";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<ion:partial view="footer" />