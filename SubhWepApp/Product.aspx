<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <div class="page-banner" style="padding: 40px 0; background: url(images/slide-02-bg.jpg) center #f9f9f9;">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>Products</h2>
                    <p>We Provident Variety of Plans !</p>
                </div>
                <div class="col-md-6">
                    <ul class="breadcrumbs">
                        <li><a href="#">Home</a></li>
                        <li>Products</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div id="content">
        <div class="container">
            <div class="row">
                <asp:Repeater ID="RptProducts" runat="server">
                    <ItemTemplate>
                        <div class="col-md-6" style="height:450px;">
                            <!-- Classic Heading -->
                            <h4 class="classic-title"><span>
                                <asp:Label ID="lblHeading" runat="server" Text='<%# Eval("Heading") %>' /></span></h4>

                            <!-- Accordion -->

                            <!-- Start Accordion 1 -->
                            <div class="panel panel-default">
                                <!-- Toggle Heading -->
                                <div>
                                    <h2>


                                        <i class="fa fa-desktop"></i>
  <asp:Label ID="lblLoanName" runat="server" Text='<%# Eval("LoanName") %>' />

                                    </h2>
                                </div>
                                <div class="hr5" style="margin-top:5px; margin-bottom:5px;"></div>
                                <div>
                                    <h3 class="accent-color">Loan amount upto (Rs.):
                      
                                    </h3>
                                </div>
                                 <div class="hr5" style="margin-top:5px; margin-bottom:5px;"></div>
                                <div>
                                    <h4 class="panel-title">


                                        <h3>
                                            <asp:Label ID="lblLoanAmt" runat="server" Text='<%# Eval("LoanAmt") %>' /></h3>

                                    </h4>
                                </div>
                                 <div class="hr5" style="margin-top:5px; margin-bottom:5px;"></div>

                                <div>
                                    <h3 class="accent-color">Typical tenor (Yrs):
                      
                                    </h3>
                                </div>
                                 <div class="hr5" style="margin-top:5px; margin-bottom:5px;"></div>
                                <div class="panel-heading">
                                    <h4 class="panel-title">


                                        <h3>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TypicalTenour") %>' /></h3>

                                    </h4>
                                </div>
                                
                                <!-- Toggle Content -->
                                <div id="collapse-1" class="panel-collapse collapse in">
                                    <div class="panel-body" style="height:200px;overflow-y:scroll">
                                        <br />
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Description") %>' />
                                    </div>
                                </div>
                            </div>
                            <!-- End Accordion 1 -->

                        </div>
                    </ItemTemplate>
                </asp:Repeater>
              
            </div>

          
        </div>
    </div>

</asp:Content>

