    <!-- FOOTER -->
  <section class="footer">

    <div class="footer-elements">
      <div class="row">
        <div class="col-sm-12">
          <div class="row no-gutter">

            <!-- FOOTER TOP ELEMENT -->
            <div class="col-sm-3">
              <div class="footer-element">
                <span class="typcn typcn-watch"></span>
                <p>MONDAY TO SATURDAY<span>09:30 AM - 06:00 PM</span></p>
              </div>
            </div>
            <!-- FOOTER TOP ELEMENT -->

            <!-- FOOTER TOP ELEMENT -->
            <div class="col-sm-3">
              <div class="footer-element">
                <span class="typcn typcn-location-outline"></span>
                <p>
Plot No. 55-P, 4th Floor, Sector 44,  

<span>Gurugram 122003 (Haryana)
</span></p>
              </div>
            </div>
            <!-- FOOTER TOP ELEMENT -->

            <!-- FOOTER TOP ELEMENT -->
            <div class="col-sm-3">
              <div class="footer-element">
                <span class="typcn typcn-mail"></span>
                <p>E-MAIL:<span><a href="mailto:info@subhlakshmi.in ">info@subhlakshmi.in </a></span></p>
              </div>
            </div>
            <!-- FOOTER TOP ELEMENT -->

            <!-- FOOTER TOP ELEMENT -->
            <div class="col-sm-3">
              <div class="footer-element">
                <span class="typcn typcn-phone-outline"></span>
                <p>CALL US:<span> +91-8377808085 / +91-1149025921</span></p>
              </div>
            </div>
            <!-- FOOTER TOP ELEMENT -->
          </div>
        </div>
      </div>
    </div>

    <div class="footer-widgets">
      <div class="row">

        <!-- FOOTER WIDGET -->
        <div class="col-sm-3">
          <div class="footer-widget">
            <div class="small-logo"><img src="images/logo-footer.png" alt=""></div>
            <p>rove the financial health of the underserved small and micro entrepreneurs, by supporting them in income-generation activities through financial intermediation.</p>
            <ul class="social-links">
              <li><a href="#" title="Twitter"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#" title="Facebook"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
              <li><a href="#" title="Pinterest"><i class="fa fa-pinterest-p"></i></a></li>
            </ul>
          </div>
        </div>
        <!-- END FOOTER WIDGET -->

        <!-- FOOTER WIDGET -->
        <div class="col-sm-3">
          <div class="footer-widget">
            <h5>RECENT NEWS</h5>
            <ul class="posts">
              <li>
                <a href="#">Front-end processes with effective convergence</a>
                <span>3 days ago</span>
              </li>
              <li>
                <a href="#">User friendly intellectual capital</a>
                <span>5 days ago</span>
              </li>
              <li><a href="#">Innovate open-source infrastructures</a>
                <span>1 month ago</span>
              </li>
            </ul>
          </div>
        </div>
        <!-- END FOOTER WIDGET -->

        <!-- FOOTER WIDGET -->
        <div class="col-sm-3">
          <div class="footer-widget">
            <h5>LINKS</h5>
            <ul class="posts">
              <li><a href="#">HOME</a></li>
              <li><a href="#">SERVICES</a></li>
              <li><a href="#">PROJECTS</a></li>
              <li><a href="#">BLOG</a></li>
              <li><a href="#">CONTACT</a></li>
            </ul>
          </div>
        </div>
        <!-- END FOOTER WIDGET -->


        <!-- FOOTER WIDGET -->
        <div class="col-sm-3">
          <div class="footer-widget">
            <h5>NEWSLETTER</h5>
            <p>Enter your e-mail and subscribe to our newsletter</p>
            <div id="mc_embed_signup">
              <form class="form-inline validate material" action="http://audemedia.us7.list-manage.com/subscribe/post?u=b5638e105dac814ad84960d90&amp;id=9345afa0aa" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" target="_blank" novalidate>
                <input id="mce-EMAIL" type="email" name="EMAIL" placeholder="E-mail" required>
                <div style="position: absolute; left: -5000px;">
                  <input type="text" name="b_b5638e105dac814ad84960d90_9345afa0aa" tabindex="-1" value="">
                </div>
                <input type="submit" value="SUBSCRIBE" name="subscribe" id="mc-embedded-subscribe" class="mtr-btn button-blue">
              </form>
            </div>

          </div>
        </div>
        <!-- END FOOTER WIDGET -->

      </div>
    </div>
  </section>
  <!-- END OF FOOTER -->

<!--   <div class="copyright">
    <div class="row">
      <div class="col-sm-12">
        <p class="text-center">Copyright c <a href="www.subhlakshmi.in">Subhlakshmi Pvt. ltd</a></p>
      </div>
    </div>
  </div>
 -->
  <a href="#top" id="back-to-top"><i class="fa fa-angle-up"></i></a>

  <!-- JAVASCRIPT FILES -->
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.hoverIntent.js"></script>
  <script src="js/superfish.min.js"></script>
  <script src="js/jquery.sliderPro.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/odometer.min.js"></script>
  <script src="js/waypoints.min.js"></script>
  <script src="js/jquery.slicknav.min.js"></script>
  <script src="js/wow.min.js"></script>
  <script src="js/retina.min.js"></script>
  <script src="js/custom.js"></script>
  <!-- END OF JAVASCRIPT FILES -->


  <script>
   jQuery(document).ready(function($) {
      "use strict";

       //  HEADER SLIDER HOOK
      jQuery('#index-slider2').fadeIn(1000);
      $('#index-slider2').sliderPro({
      width: 800,
      height: 450,
      visibleSize: '100%',
      forceSize: 'fullWidth',
      arrows: true,
      autoplay: true,
      autoplayDelay: 8500,
      autoplayOnHover: 'none',
      slideDistance: 0,
      breakpoints: {
        1025: {
             width: '75%'
        },
        500: {
            width: '100%',
            arrows: false
        }
    }
});

          //  TESTIMONIALS CAROUSEL HOOK
          $('#customers-testimonials').owlCarousel({
            loop: true,
            center: true,
            items: 3,
            margin: 0,
            autoplay: true,
            autoplayTimeout: 8500,
            smartSpeed: 450,
            responsive: {
              0: {
                items: 1
              },
              768: {
                items: 2
              },
              1170: {
                items: 3
              }
            }
          });
	   
          //  CLIENTS CAROUSEL HOOK
          $('#clients-carousel').owlCarousel({
            loop: true,
            items: 5,
            margin: 30,
            autoplay: true,
            autoplayTimeout: 8500,
            smartSpeed: 450,
            responsive: {
              0: {
                items: 2
              },
              768: {
                items: 3
              },
              1170: {
                items: 5
              }
            }
          });

          $('.odometer').waypoint(function() {

            setTimeout(function() {
              $('#odometer1.odometer').html(7);
            }, 500);

            setTimeout(function() {
              $('#odometer2.odometer').html(20);
            }, 1000);

            setTimeout(function() {
              $('#odometer3.odometer').html(35);
            }, 1500);

            setTimeout(function() {
              $('#odometer4.odometer').html(35955);
            }, 2000);
            setTimeout(function() {
              $('#odometer5.odometer').html(82.64);
            }, 2000);

          }, {
            offset: 800,
            triggerOnce: true
          });

      });
  </script>
   <script>
   jQuery(document).ready(function($) {
      "use strict";

        //  HEADER SLIDER HOOK
        $('#about1-slider').owlCarousel({
          loop: true,
          items: 1,
          margin: 0,
          autoplay: true,
          autoplayTimeout: 8500,
          animateIn: 'fadeIn',
          animateOut: 'bounceOut',
          lazyLoad: true,
        });

 });
  </script>
<script>
  jQuery(document).ready(function($) {
      "use strict";
        //  HEADER SLIDER HOOK
        $('#single-project-slider').owlCarousel({
          loop: true,
          items: 1,
          margin: 0,
          autoplay: true,
          autoplayTimeout: 8500,
          animateIn: 'fadeInUpBig',
          animateOut: 'bounceOutDown'
        });
      });
  </script>
<script>
jQuery(document).ready(function($) {
      "use strict";

        //  HEADER SLIDER HOOK
    $('#single-project-carousel').owlCarousel({
    loop:true,
    margin:10,
    autoplay: true,
    autoplayTimeout: 5000,
    responsive:{
        0:{
            items:1,
            dots:false
        },
        600:{
            items:3
        },
        1100:{
            items:5
        }
    }
    })
      });

$('.lightbox').magnificPopup({
      type: 'image',
      gallery:{
        enabled:true
      },
      retina: {
        ratio: 1,
        replaceSrc: function(item, ratio) {
          return item.src.replace(/\.\w+$/, function(m) { return '@2x' + m; });
    } // function that changes image source
  }
});

  </script>
  
  
  
</body>

</html>
