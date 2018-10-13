<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="CustonerAndClient.aspx.cs" Inherits="Admin_CustonerAndClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="form-group">
										

										<div class="col-sm-3">
                                            <%--<input type="password" id="form-field-2" placeholder="Password" class="col-xs-10 col-sm-5">--%>
                                            
										
                                        </div>
                                    <div class="col-sm-6">
                                          
                                            <asp:Image ID="ImgUser" runat="server" class="col-xs-10 col-sm-5" Height="200px" Width="200px"></asp:Image>
                                        <asp:Label ID="lblImgMsg" runat="server" ForeColor="Red" Text="Choose File and Upload Image" Visible="false"></asp:Label>
										
                                        </div>
                                    
                                    <div class="col-sm-3">
											<%--<input type="text" id="form-field-1" placeholder="Username" class="col-xs-10 col-sm-5">--%>
                                           
										
                                        </div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Photo </label>

										<div class="col-sm-3">
                                            
			
                <asp:FileUpload ID="FileUpload1" runat="server" class="btn btn-white btn-inverse btn-sm" />
                
															
                                            
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:Button ID="Button3" class="btn btn-white btn-yellow btn-sm" runat="server" Text="Upload" OnClick="Button3_Click" />
                                        </div>
                                        <div class="col-sm-3">
											
                                        </div>
									</div>
                                								

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Heading</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Password" class="col-xs-10 col-sm-5">--%>
											
                                            <asp:TextBox ID="txtFooterTitle" runat="server"  placeholder="Loan Name" class="col-xs-10 col-sm-5"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ControlToValidate="txtFooterTitle" ErrorMessage="Required"  ValidationGroup="Pic"
                                ForeColor="Red"></asp:RequiredFieldValidator>
											
                                        </div>
									</div>

                                <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Footer Title</label>

										<div class="col-sm-9">
                                <asp:TextBox ID="txtDescription" runat="server" placeholder="Description" class="form-control" TextMode="MultiLine" Height="150"></asp:TextBox>
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
                                            <asp:TemplateField HeaderText="Photo">

                                                 <ItemTemplate>
                                                     <asp:Image ID="Label3" runat="server" Width="50" Height="50" ImageUrl='<%# "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("CustomerImage")) %>' ></asp:Image>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Loan Name">

                                                <ItemTemplate>
                                                    <asp:Label ID="Labell" runat="server" Text='<%# Bind("Heading") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Loan Name">

                                                <ItemTemplate>
                                                    <asp:Label ID="Labell4" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
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

