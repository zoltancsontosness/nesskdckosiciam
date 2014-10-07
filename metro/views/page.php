<ion:partial view="header" />

<div class="content">
  <div class="container">
            
            <div class="blog">
               <div class="row">
                  <div class="col-md-12">
                     <ion:article>
                     <!-- Blog Posts -->
                     <div class="row">
                        <div class="col-md-8 col-sm-8">
                           <div class="posts">
                              <!-- Post one -->
                              <div class="entry">
                                 <h2><ion:title /></h2>
                                 
                                 <!-- Meta details -->
                                 <div class="meta">
                                    <i class="fa fa-calendar"></i> 26-2-2012 <i class="fa fa-user"></i> Admin <i class="fa fa-folder-open"></i> <a href="#">General</a> <span class="pull-right"><i class="fa fa-comment"></i> <a href="#">2 Comments</a></span>
                                 </div>
                                 
                                 <!-- Thumbnail -->
								<div class="bthumb2">
								<ion:medias type="picture" limit="1">
									
									<ion:media>
									
										<a href="#"><img src="<ion:src size="200" unsharp="false" />" title="<ion:title />" alt="<ion:alt />" /></a>
								    
									</ion:media>
								</ion:medias>
								</div>
                                 
                                <ion:content />
								</div>

                              <div class="clearfix"></div>
                              
                           </div>
                        </div>                        
                        <div class="col-md-4 col-sm-4">
                           <div class="sidebar">
                              <!-- Widget -->
                              <div class="widget">
                                 <h4>Search</h4>
								  <form role="form">
								   <div class="input-group">
									 <input type="email" class="form-control" id="search" placeholder="Type...">
									<span class="input-group-btn">
										<button type="submit" class="btn btn-default">Search</button>
									</span>
								   </div>
								 </form>
                              </div>
                              <div class="widget">
                                 <h4>Recent Posts</h4>
                                 <ul>
                                    <li><a href="#">Sed eu leo orci, condimentum gravida metus</a></li>
                                    <li><a href="#">Etiam at nulla ipsum, in rhoncus purus</a></li>
                                    <li><a href="#">Fusce vel magna faucibus felis dapibus facilisis</a></li>
                                    <li><a href="#">Vivamus scelerisque dui in massa</a></li>
                                    <li><a href="#">Pellentesque eget adipiscing dui semper</a></li>
                                 </ul>
                              </div>
                              <div class="widget">
                                 <h4>About</h4>
                                 <p>Nulla facilisi. Sed justo dui, id erat. Morbi auctor adipiscing tempor. Phasellus condimentum rutrum aliquet. Quisque eu consectetur erat. Proin rutrum, erat eget posuere semper, <em>arcu mauris posuere tortor</em>,velit at <a href="#">magna sollicitudin cursus</a> ac ultrices magna. Aliquam consequat, purus vitae auctor ullamcorper, sem velit convallis quam, a pharetra justo nunc et mauris. </p>
                              </div>                              
                           </div>                                                
                        </div>
                     </div>
                     
                     
                     </ion:article>
                  </div>
               </div>
            </div>
	</div>
</div>

<ion:partial view="footer" />
