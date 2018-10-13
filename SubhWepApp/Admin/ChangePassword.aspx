<%@ Page Title="Subhlakshmi | Change Password" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Admin_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
        
    

												<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> User Name </label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1" placeholder="Username" class="col-xs-10 col-sm-5">--%>
                                            <asp:TextBox ID="txtUsername" runat="server" placeholder="Username" class="col-xs-10 col-sm-5"></asp:TextBox>
										<asp:RequiredFieldValidator ID="RequiredFieldValidatoru" runat="server" 
                                ControlToValidate="txtUsername" ErrorMessage="Required" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
									</div>
                                								

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Old Password</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Password" class="col-xs-10 col-sm-5">--%>
											
                                            <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" placeholder="Old Password" class="col-xs-10 col-sm-5" OnTextChanged="txtPwd_TextChanged" AutoPostBack="True"></asp:TextBox>
											<asp:RequiredFieldValidator ID="RequiredFieldValidatorp" runat="server" 
                                ControlToValidate="txtPwd" ErrorMessage="Required" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
									</div>

                                <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> New Password </label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1" placeholder="Username" class="col-xs-10 col-sm-5">--%>
                                            <asp:TextBox ID="txtNewPwd" runat="server" TextMode="Password" placeholder="New assword" class="col-xs-10 col-sm-5"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtNewPwd" ErrorMessage="Required" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
										</div>
									</div>
                                								

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Confirm Password</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Password" class="col-xs-10 col-sm-5">--%>
											<asp:TextBox ID="txtconpwd" runat="server" TextMode="Password" placeholder="Confirm Password" class="col-xs-10 col-sm-5"></asp:TextBox>
										<asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" 
                                ControlToValidate="txtconpwd" ErrorMessage="Required" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidatorcmp" runat="server" 
                                ControlToCompare="txtNewPwd" ControlToValidate="txtconpwd" 
                                ErrorMessage="Password Not Match !" ForeColor="Red"></asp:CompareValidator>
                                        </div>
									</div>

									

									

									

									<div>
										<div class="col-md-offset-3 col-md-9">
											<%--<button class="btn btn-info" type="button">
												<i class="ace-icon fa fa-check bigger-110"></i>
												Login
											</button>--%>
                                            <asp:Button ID="btnLogin" class="btn btn-info" runat="server" Text="Submit" OnClick="btnLogin_Click"></asp:Button>

											&nbsp; &nbsp; &nbsp;
											<%--<button class="btn" type="reset">
												<i class="ace-icon fa fa-undo bigger-110"></i>
												Reset
											</button>--%>
                                            <asp:Button ID="btnReset" class="btn" runat="server" Text="Reset"></asp:Button>
										</div>
									</div>

									
								
							<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div>

</asp:Content>

