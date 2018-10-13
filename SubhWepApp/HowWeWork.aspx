<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="HowWeWork.aspx.cs" Inherits="HowWeWork" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="page-banner" style="padding: 40px 0; background: url(images/slide-02-bg.jpg) center #f9f9f9;">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>How We Work</h2>
                    <p>We Create best For Your Future !</p>
                </div>
                <div class="col-md-6">
                    <ul class="breadcrumbs">
                        <li><a href="#">Home</a></li>
                        <li>How We Work</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div id="content">
        <div class="container">
            <div class="row">
                <div class="col-md-12">

              <!-- Start Big Heading -->
            
              <asp:Repeater ID="RptProducts" runat="server">
                    <ItemTemplate>
                         <div class="big-title classic-title">
                <h1> <asp:Label ID="lblHeading" runat="server" Text='<%# Eval("Heading") %>'></asp:Label></h1>

              </div>
              <!-- End Big Heading -->
  

              <!-- Some Text -->
             
              <!-- Divider -->
              <div class="hr1" style="margin-bottom:14px; color:red;"></div>

              <!-- Start Icons Lists -->
              <div class="row">
                <div class="col-md-12">
                  <ul class="icons-list">
                    <li><i class="fa fa-check-circle"></i> <asp:Label ID="lblLine1" runat="server" Text='<%# Eval("Line1") %>'></asp:Label></li>
                    <li><i class="fa fa-check-circle"></i> <asp:Label ID="lblLine2" runat="server" Text='<%# Eval("Line2") %>'></asp:Label></li>
                    <li><i class="fa fa-check-circle"></i> <asp:Label ID="lblLine3" runat="server" Text='<%# Eval("Line2") %>'></asp:Label></li>
                    <li><i class="fa fa-check-circle"></i> <asp:Label ID="lblLine4" runat="server" Text='<%# Eval("Line2") %>'></asp:Label></li>
                    <li><i class="fa fa-check-circle"></i> <asp:Label ID="lblLine5" runat="server" Text='<%# Eval("Line2") %>'></asp:Label></li>
                  </ul>
                </div>
                
              </div>
              <!-- End Icons Lists -->

              <!-- Divider -->
              <div class="hr1" style="margin-bottom:20px;"></div>

              <!-- Button -->
              
                           

                    </ItemTemplate>
                </asp:Repeater>
              
            </div>

          
        </div>
    </div>

        </div>
</asp:Content>

