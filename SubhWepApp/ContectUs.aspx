<%@ Page title="Subhlakshmi | Contact" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ContectUs.aspx.cs" Inherits="ContectUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Start Page Banner -->
    <div class="page-banner" style="padding:40px 0; background: url(images/slide-02-bg.jpg) center #f9f9f9;">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h2>Contact Us</h2>
            <p>We Are here !</p>
          </div>
          <div class="col-md-6">
            <ul class="breadcrumbs">
              <li><a href="#">Home</a></li>
              <li>Services</li>
            </ul>	
          </div>
        </div>
      </div>
    </div>
    <!-- End Page Banner -->

   <div id="content">
      <div class="container">

        <div class="row">

          <div class="col-md-8">

            <!-- Classic Heading -->
            <h4 class="classic-title"><span>Contact Us</span></h4>

            <!-- Start Contact Form -->
            <form role="form" class="contact-form" id="contact-form" method="post">
              <div class="form-group">
                <div class="controls">
                  <input type="text" class="email" placeholder="Name" name="name">
                </div>
              </div>
              <div class="form-group">
                <div class="controls">
                  <input type="email" class="email" placeholder="Email" name="email">
                </div>
              </div>
              <div class="form-group">
                <div class="controls">
                  <input type="text" class="email"  placeholder="Subject" name="subject">
                </div>
              </div>

              <div class="form-group">

                <div class="controls">
                  <textarea rows="7" class="email"  placeholder="Message" name="message"></textarea>
                </div>
              </div>
              <button type="submit" id="submit" class="btn-system btn-large">Send</button>
              <div id="success" style="color:#34495e;"></div>
            </form>
            <!-- End Contact Form -->

          </div>

          <div class="col-md-4">

            <!-- Classic Heading -->
            <h4 class="classic-title"><span>Information</span></h4>

            <!-- Some Info -->
            <p>SUBHLAKSHMI FINANCE PVT. LTD.</p>
              <p>CIN: U67120PB1996PTC017604</p>

            <!-- Divider -->
            <div class="hr1" style="margin-bottom:10px;"></div>

            <!-- Info - Icons List -->
            <ul class="icons-list">
              <li><i class="fa fa-globe">  </i> <strong>Corporate Office:</strong> 2nd Floor, Unit No. 200, Opp. Dlf Tower, Shivaji Marg, Moti Nagar, New Delhi - 110015.</li>
                <li><i class="fa fa-globe">  </i> <strong>Regd. Office:</strong>  S.C.O. 1, 1st Floor, Neelkanth Plaza, Opp. Sekhon Banquet, Zirakpur KalkaHighway, Dhakauli, Zirakpur, Mohali PB-140603</li>
              <li><i class="fa fa-envelope-o"></i> <strong>Email:</strong> info@subhlakshmi.in</li>
              <li><i class="fa fa-mobile"></i> <strong>Phone:</strong> +91-11- 49025921</li>
            </ul>

            <!-- Divider -->
            <div class="hr1" style="margin-bottom:15px;"></div>

            <!-- Classic Heading -->
            <h4 class="classic-title"><span>Working Hours</span></h4>

            <!-- Info - List -->
            <ul class="list-unstyled">
              <li><strong>Monday - Saturday</strong> - 10am to 7pm</li>
             
              <li><strong>Sunday</strong> - Closed</li>
            </ul>

          </div>

        </div>

      </div>
    </div>
</asp:Content>

