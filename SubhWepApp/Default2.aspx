<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <li>
											<a href="assets/images/gallery/image-1.jpg" title="Photo Title" data-rel="colorbox" class="cboxElement">
												<img width="150" height="150" alt="150x150" src="assets/images/gallery/thumb-1.jpg">
											</a>

											<div class="tags">
												<span class="label-holder">
													<span class="label label-info">breakfast</span>
												</span>

												<span class="label-holder">
													<span class="label label-danger">fruits</span>
												</span>

												<span class="label-holder">
													<span class="label label-success">toast</span>
												</span>

												<span class="label-holder">
													<span class="label label-warning arrowed-in">diet</span>
												</span>
											</div>

											<div class="tools">
												<a href="#">
													<i class="ace-icon fa fa-link"></i>
												</a>

												<a href="#">
													<i class="ace-icon fa fa-paperclip"></i>
												</a>

												<a href="#">
													<i class="ace-icon fa fa-pencil"></i>
												</a>

												<a href="#">
													<i class="ace-icon fa fa-times red"></i>
												</a>
											</div>
										</li>
</asp:Content>

