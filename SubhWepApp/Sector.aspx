<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Sector.aspx.cs" Inherits="Sector" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="page-banner" style="padding: 40px 0; background: url(images/slide-02-bg.jpg) center #f9f9f9;">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>Our Sectors</h2>
                    <p>We Work on Social Sectors !</p>
                </div>
                <div class="col-md-6">
                    <ul class="breadcrumbs">
                        <li><a href="#">Home</a></li>
                        <li>Sectors</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div id="content">
        <div class="container">
            <div class="row">
                  <asp:Repeater ID="RptDescription" runat="server">
                    <ItemTemplate>
                        <div class="col-md-12">
                            <!-- Class
                                 <div class="hr5" style="margin-top:5px; margin-bottom:5px;"></div>
                              
                                
                                <!-- Toggle Content -->
                                <div id="collapse-1" class="panel-collapse collapse in">
                                    
                                        
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Description") %>' />
                                    
                                </div>
                            </div>
                            <!-- End Accordion 1 -->

                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                </div>
            <HR />
             <%-- Pics--%>
             <div class="container">
           <div class="row portfolio-page">
                
          <!-- Start Recent Projects Carousel -->
          <ul id="portfolio-list" data-animated="fadeIn">
           
            <asp:Repeater ID="RptPics" runat="server">
                    <ItemTemplate>
                        <li>
                             <asp:Image ID="Label3" runat="server" Width="480px" Height="300px"  ImageUrl='<%# "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("CustomerImage")) %>' ></asp:Image>
              <%--<img src="images/portfolio-1/1.png" alt="">--%>
              <div class="portfolio-item-content">
                <span class="header">  <asp:Label ID="Labell" runat="server" Text='<%# Bind("FooterTitle") %>'></asp:Label></span>
               <%-- <span class="header">Town winter 2013</span>--%>
               
              </div>
              <a href="#"><i class="more">+</i></a>

            </li> 
                    </ItemTemplate>
                </asp:Repeater>
          
          </ul>
          <!-- End Portfolio Items -->
                    

        </div>
                <%--  </div>--%>
            <%--  Pics End--%>

            </div>
        </div>
        </div>
</asp:Content>

