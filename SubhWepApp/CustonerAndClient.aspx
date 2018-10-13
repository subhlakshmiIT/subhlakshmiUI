<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="CustonerAndClient.aspx.cs" Inherits="CustonerAndClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

         <div class="page-banner" style="padding: 40px 0; background: url(images/slide-02-bg.jpg) center #f9f9f9;">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>Our Customers & Clients</h2>
                    <p>We Provides best Service and Supports !</p>
                </div>
                <div class="col-md-6">
                    <ul class="breadcrumbs">
                        <li><a href="#">Home</a></li>
                        <li>Customers & Clients</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div id="content">
        <div class="container">
          
            <HR />
             <%-- Pics--%>
             <div class="container">

                 <h4 class="classic-title"><span>Our Happy Customer</span></h4>
<div class="row">


    <asp:Repeater ID="RptCustomers" runat="server">
                    <ItemTemplate>
                         <!-- Start Image Service Box 1 -->
            <div class="col-md-4 image-service-box">
                <asp:Image ID="Label3" class="img-thumbnail" Width="330px" Height="250px" runat="server" ImageUrl='<%# "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("CustomerImage")) %>' ></asp:Image>
              <%--<img class="img-thumbnail" src="images/service-01.jpg" alt="">--%>
              <h4><asp:Label ID="Labell" runat="server" Text='<%# Bind("Heading") %>'></asp:Label></h4>
                <div class="panel-body" style="height:200px;overflow-y:scroll">
              <p><asp:Label ID="Label2" runat="server" Text='<%# Eval("Description") %>' /></p>
                    </div>
            </div>
            <!-- End Image Service Box 1 -->
                    </ItemTemplate>
                </asp:Repeater>
           

          

          </div>
            <%--  Pics End--%>
                
            </div>




            
        </div>

         <!-- Start Portfolio Section -->
      <div class="project">
        <div class="container">
          <!-- Start Recent Projects Carousel -->
          <div class="recent-projects">
            <h4 class="title"><span>Our Clients</span></h4>
            <div class="projects-carousel touch-carousel">

              


                   <asp:Repeater ID="RptClient" runat="server">
                    <ItemTemplate>
                        <div class="portfolio-item item">
                          <div class="portfolio-border">
                  <div class="portfolio-thumb">
                     <a class="" title="This is an image title" href="#">
                     <%-- <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>--%>

                        <asp:Image ID="Label3" class="img-thumbnail" runat="server" Width="265px" Height="154px" ImageUrl='<%# "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("CustomerImage")) %>' ></asp:Image>

                    </a>
                  </div>
                  <div class="portfolio-details">
                    <a href="#">
                      <h4><asp:Label ID="Labell" runat="server" Text='<%# Bind("Name") %>'></asp:Label></h4>
                      <span><asp:Label ID="Label11" runat="server" Text='<%# Bind("Desig_Org") %>'></asp:Label></span>
                      <%--<span>Drawing</span>--%>
                    </a>
                  </div>
                </div>
                            </div>
                    </ItemTemplate>
                </asp:Repeater>
              

             <%-- <div class="portfolio-item item">
                <div class="portfolio-border">
                  <div class="portfolio-thumb">
                    <a class="lightbox" title="This is an image title" href="images/portfolio-big-01.jpg">
                      <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                      <img alt="" src="images/portfolio-1/2.png" />
                    </a>
                  </div>
                  <div class="portfolio-details">
                    <a href="#">
                      <h4>Lorem Ipsum Dolor</h4>
                      <span>Logo</span>
                      <span>Animation</span>
                    </a>
                  </div>
                </div>
              </div>

              <div class="portfolio-item item">
                <div class="portfolio-border">
                  <div class="portfolio-thumb">
                    <a href="#">
                      <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                      <img alt="" src="images/portfolio-1/3.png" />
                    </a>
                  </div>
                  <div class="portfolio-details">
                    <a href="#">
                      <h4>Lorem Ipsum Dolor</h4>
                      <span>Drawing</span>
                    </a>
                  </div>
                </div>
              </div>

              <div class="portfolio-item item">
                <div class="portfolio-border">
                  <div class="portfolio-thumb">
                    <a href="#">
                      <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                      <img alt="" src="images/portfolio-1/4.png" />
                    </a>
                  </div>
                  <div class="portfolio-details">
                    <a href="#">
                      <h4>Lorem Ipsum Dolor</h4>
                      <span>Website</span>
                      <span>Ilustration</span>
                    </a>
                  </div>
                </div>
              </div>

              <div class="portfolio-item item">
                <div class="portfolio-border">
                  <div class="portfolio-thumb">
                    <a class="lightbox" title="This is an image title" href="images/portfolio-big-02.jpg">
                      <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                      <img alt="" src="images/portfolio-1/5.png" />
                    </a>
                  </div>
                  <div class="portfolio-details">
                    <a href="#">
                      <h4>Lorem Ipsum Dolor</h4>
                      <span>Logo</span>
                      <span>Drawing</span>
                    </a>
                  </div>
                </div>
              </div>

              <div class="portfolio-item item">
                <div class="portfolio-border">
                  <div class="portfolio-thumb">
                    <a href="#">
                      <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                      <img alt="" src="images/portfolio-1/6.png" />
                    </a>
                  </div>
                  <div class="portfolio-details">
                    <a href="#">
                      <h4>Lorem Ipsum Dolor</h4>
                      <span>Animation</span>
                    </a>
                  </div>
                </div>
              </div>

              <div class="portfolio-item item">
                <div class="portfolio-border">
                  <div class="portfolio-thumb">
                    <a class="lightbox" title="This is an image title" href="images/portfolio-big-03.jpg">
                      <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                      <img alt="" src="images/portfolio-1/7.png" />
                    </a>
                  </div>
                  <div class="portfolio-details">
                    <a href="#">
                      <h4>Lorem Ipsum Dolor</h4>
                      <span>Website</span>
                    </a>
                  </div>
                </div>
              </div>

              <div class="portfolio-item item">
                <div class="portfolio-border">
                  <div class="portfolio-thumb">
                    <a href="#">
                      <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                      <img alt="" src="images/portfolio-1/8.png" />
                    </a>
                  </div>
                  <div class="portfolio-details">
                    <a href="#">
                      <h4>Lorem Ipsum Dolor</h4>
                      <span>Ilustration</span>
                      <span>Animation</span>
                    </a>
                  </div>
                </div>
              </div>

              <div class="portfolio-item item">
                <div class="portfolio-border">
                  <div class="portfolio-thumb">
                    <a href="#">
                      <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                      <img alt="" src="images/portfolio-1/9.png" />
                    </a>
                  </div>
                  <div class="portfolio-details">
                    <a href="#">
                      <h4>Lorem Ipsum Dolor</h4>
                      <span>Ilustration</span>
                      <span>Animation</span>
                    </a>
                  </div>
                </div>
              </div>

              <div class="portfolio-item item">
                <div class="portfolio-border">
                  <div class="portfolio-thumb">
                    <a href="#">
                      <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                      <img alt="" src="images/portfolio-1/10.png" />
                    </a>
                  </div>
                  <div class="portfolio-details">
                    <a href="#">
                      <h4>Lorem Ipsum Dolor</h4>
                      <span>Ilustration</span>
                      <span>Animation</span>
                    </a>
                  </div>
                </div>
              </div>

              <div class="portfolio-item item">
                <div class="portfolio-border">
                  <div class="portfolio-thumb">
                    <a href="#">
                      <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                      <img alt="" src="images/portfolio-1/11.png" />
                    </a>
                  </div>
                  <div class="portfolio-details">
                    <a href="#">
                      <h4>Lorem Ipsum Dolor</h4>
                      <span>Ilustration</span>
                      <span>Animation</span>
                    </a>
                  </div>
                </div>
              </div>

              <div class="portfolio-item item">
                <div class="portfolio-border">
                  <div class="portfolio-thumb">
                    <a href="#">
                      <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                      <img alt="" src="images/portfolio-1/12.png" />
                    </a>
                  </div>
                  <div class="portfolio-details">
                    <a href="#">
                      <h4>Lorem Ipsum Dolor</h4>
                      <span>Ilustration</span>
                      <span>Animation</span>
                    </a>
                  </div>
                </div>
              </div>--%>

            </div>
          </div>
          <!-- End Recent Projects Carousel -->
        </div>
        <!-- .container -->
      </div>
      <!-- End Portfolio Section -->

        <div class="hr1 margin-60"></div>

        </div>
     
    
      <script type="text/javascript" src="js/script.js"></script>
</asp:Content>

