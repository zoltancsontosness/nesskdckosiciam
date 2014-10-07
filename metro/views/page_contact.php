<ion:partial view="header" />
<div class="content">
	<div class="container">
	
<ion:page>

	<ion:title tag="h2" />	
     
    <!-- Articles iterator -->
    <ion:articles>
 
        <!-- Article -->
        <ion:article>
 
            <!-- Articles data -->
            <ion:title tag="p" />
		
			<div class="contact">
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<!-- Google maps -->
						<div class="gmap">
							<!-- Google Maps. Replace the below iframe with your Google Maps embed code -->
							<iframe height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d658.2196479805643!2d21.246631500000003!3d48.70780144999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x473ee0124538a4a3%3A0xed90f02a3a983025!2sBusiness+Center+Moldavsk%C3%A1%2C+Moldavsk%C3%A1+cesta+10%2FB%2C+040+11+Juh%2C+Slovensk%C3%A1+republika!5e0!3m2!1ssk!2sin!4v1409400711289"></iframe>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 col-sm-6">
						<div class="cwell">
							<!-- Contact form -->
							<h5><ion:lang key="contact_form_header" /></h5>
							<div class="form">
								<!-- Contact form (not working)-->
								<form name="contact-form" class="form-horizontal" action="#" method="post">
									<input type="hidden" name="form" value="contact" />
									<!-- Name -->
									<div class="form-group">
										<label class="control-label col-md-3" for="name"><ion:lang key="form_label_name" /></label>
										<div class="col-md-9">
											<input type="text" name="first_name" class="form-control" id="name">
										</div>
									</div>								
									<!-- Email -->
									<div class="form-group">
										<label class="control-label col-md-3" for="email"><ion:lang key="form_label_email" /></label>
										<div class="col-md-9">
											<input type="text" class="form-control" name="email" id="email">
										</div>
									</div>
									<!-- Text -->
									<div class="form-group">
										<label class="control-label col-md-3" for="comment"><ion:lang key="form_label_message" /></label>
										<div class="col-md-9">
											<textarea class="form-control" value="message" id="comment" rows="3"></textarea>
										</div>
									</div>
									<!-- Buttons -->
									<div class="form-group">
										<!-- Buttons -->
										<div class="col-md-9 col-md-offset-3">
											<button type="submit" class="btn btn-default">Submit</button>
											<button type="reset" class="btn btn-default">Reset</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6">
						<div class="cwell">
							<address>
								<ion:content />
							</address>
						</div>
					</div>
				</div>
			</div>
        </ion:article>
    </ion:articles>
</ion:page>
	</div>
</div>
 
<ion:partial view="footer" />
