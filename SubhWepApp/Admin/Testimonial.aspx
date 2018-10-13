<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Testimonial.aspx.cs" Inherits="Admin_Testimonial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       <div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Date </label>

										<div class="col-sm-9">
                                            
			                      <asp:TextBox ID="txtDate" runat="server"  placeholder="Loan Name" class="col-xs-10 col-sm-5"></asp:TextBox>
                                            
                                        </div>
                                       
									</div>
                                								

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Name</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Password" class="col-xs-10 col-sm-5">--%>
											
                                            <asp:TextBox ID="txtName" runat="server"  placeholder="Name" class="col-xs-10 col-sm-5"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ControlToValidate="txtName" ErrorMessage="Required"  ValidationGroup="Pic"
                                ForeColor="Red"></asp:RequiredFieldValidator>
											
                                        </div>
									</div>
                                      <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Designation</label>

										<div class="col-sm-9">
                                <asp:TextBox ID="txtDesignation" runat="server" placeholder="Designation" class="col-xs-10 col-sm-5"></asp:TextBox>
										<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtDesignation" ErrorMessage="Required"  ValidationGroup="Pic"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                                								
                                    </div>
                                    </div>

                                <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Description</label>

										<div class="col-sm-9">
                                <asp:TextBox ID="txtDescription" runat="server" placeholder="Description" class="form-control" TextMode="MultiLine"></asp:TextBox>
										<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtDescription" ErrorMessage="Required"  ValidationGroup="Pic"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                                								
                                    </div>
                                    </div>
									
									

									<div>
										<div class="col-md-offset-3 col-md-9">
											
                                            <asp:Button ID="btnPicSubmit" class="btn btn-info" runat="server" ValidationGroup="Pic" Text="Submit" OnClick="btnPicSubmit_Click" ></asp:Button>

											&nbsp; &nbsp; &nbsp;
											
                                            <asp:Button ID="btnPicReset" class="btn" CausesValidation="false" runat="server" Text="Reset" OnClick="btnPicReset_Click" ></asp:Button>
										</div>
									</div>

									
								
							<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div>
    <div class="space-6"></div>
    <div class="row">
        <asp:GridView ID="GrdUserImage" runat="server" AutoGenerateColumns="False" CssClass="table  table-bordered table-hover">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sno">

                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1  %>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                           
                                            <asp:TemplateField HeaderText="Date">

                                                <ItemTemplate>
                                                    <asp:Label ID="Labell" runat="server" Text='<%# Bind("Date","{0:dd/MM/yyyy}") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Name">

                                                <ItemTemplate>
                                                    <asp:Label ID="Labell4" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Designation">

                                                <ItemTemplate>
                                                    <asp:Label ID="Labell47" runat="server" Text='<%# Bind("Designation") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Description">

                                                <ItemTemplate>
                                                    <asp:Label ID="Labell664" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                           
                                           
                                            <asp:TemplateField ShowHeader="True" HeaderText="Delete">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="btnDelete" runat="server" CssClass="btn btn-xs btn-danger" CausesValidation="False" CommandArgument='<%# Eval("Id")%>' CommandName="Delete" Text="" OnClick="btnDelete_Click"><i class="ace-icon fa fa-trash-o bigger-120"></i> </asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField ShowHeader="True" HeaderText="Edit">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="btnSelect" runat="server" CssClass="btn btn-xs btn-info" CausesValidation="False" CommandArgument='<%# Eval("Id")%>' CommandName="Select" Text="" OnClick="btnSelect_Click"><i class="ace-icon fa fa-pencil bigger-120"></i> </asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>


    </div>
    <div class="space-16"></div>

</asp:Content>

