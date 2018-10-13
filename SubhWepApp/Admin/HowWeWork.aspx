<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="HowWeWork.aspx.cs" Inherits="Admin_HowWeWork" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


      <div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Heading </label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1" placeholder="Username" class="col-xs-10 col-sm-5">--%>
                                            <asp:TextBox ID="txtHeading" runat="server" placeholder="Heading" class="form-control"></asp:TextBox>
										<asp:RequiredFieldValidator ID="RequiredFieldValidatoru" runat="server" 
                                ControlToValidate="txtHeading" ErrorMessage="Required" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
									</div>
                                								

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Line 1</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Password" class="col-xs-10 col-sm-5">--%>
											
                                            <asp:TextBox ID="txtLine1" runat="server"  placeholder="Line 1" class="form-control"></asp:TextBox>
											<asp:RequiredFieldValidator ID="RequiredFieldValidatorp" runat="server" 
                                ControlToValidate="txtline1" ErrorMessage="Required" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
									</div>

                                <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Line 2 </label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1" placeholder="Username" class="col-xs-10 col-sm-5">--%>
                                            <asp:TextBox ID="txtLine2" runat="server"  placeholder="Line 2" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtLine2" ErrorMessage="Required" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
										</div>
									</div>
                                								

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Line 3</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Password" class="col-xs-10 col-sm-5">--%>
											<asp:TextBox ID="txtLine3" runat="server" placeholder="Line 3" class="form-control"  ></asp:TextBox>
										<asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" 
                                ControlToValidate="txtLine3" ErrorMessage="Required" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                                            
                                        </div>
									</div>

									

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Line 4</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Password" class="col-xs-10 col-sm-5">--%>
											<asp:TextBox ID="txtLine4" runat="server" placeholder="Line 4" class="form-control" ></asp:TextBox>
										
                                            
                                        </div>
									</div>

                                <div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Line 5</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Password" class="col-xs-10 col-sm-5">--%>
											<asp:TextBox ID="txtLine5" runat="server" placeholder="Line 5" class="form-control" ></asp:TextBox>
										
                                            
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
                                            <asp:Button ID="btnReset" class="btn" CausesValidation="false" runat="server" Text="Reset" OnClick="btnReset_Click"></asp:Button>
										</div>
									</div>

									
								
							<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div>
    <div class="space-10"></div>
    <div class="row" style="overflow-x:scroll">
       
        <asp:GridView ID="Grdheading" runat="server" AutoGenerateColumns="False" CssClass="table  table-bordered table-hover">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sno">

                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1  %>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Heading">

                                                <ItemTemplate>
                                                    <asp:Label ID="Labelh" runat="server" Text='<%# Bind("Heading") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Line 1">

                                                <ItemTemplate>
                                                    <asp:Label ID="LabelLine1" runat="server" Text='<%# Bind("Line2") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Line 2">

                                                <ItemTemplate>
                                                    <asp:Label ID="LabelLine2" runat="server" Text='<%# Bind("Line2") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Line 3">

                                                <ItemTemplate>
                                                    <asp:Label ID="LabelLine3" runat="server" Text='<%# Bind("Line3") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Line 4">

                                                <ItemTemplate>
                                                    <asp:Label ID="LabelLine4" runat="server" Text='<%# Bind("Line4") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Line 5">

                                                <ItemTemplate>
                                                    <asp:Label ID="LabelLine5" runat="server" Text='<%# Bind("Line5") %>'></asp:Label>
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

