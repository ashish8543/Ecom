<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignIn</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=">
    <meta http-equiv="X-UA-Compatible" content="Chrome">
    <link href="css/Custom.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>

                        </button>
                        <a class="navbar-brand" href="javascript:void();"><span>
                            <img src="icons/sd.png" alt="MyEShopping" height="30" /></span>MyEShopping</a>

                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Default.aspx">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Blog</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Product <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-header"><a href="#">Men</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Shirt</a></li>
                                    <li><a href="#">Pants</a></li>
                                    <li><a href="#">Jeans</a></li>
                                    <li><a href="#">T-Shirts</a></li>
                                    <li><a href="#">Lowers</a></li>
                                    <li><a href="#">Kurta</a></li>
                                    <li><a href="#">Suits</a></li>


                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header"><a href="#">Women</a></li>
                                    <li role="separator" class="divider"></li>

                                    <li><a href="#">Laggies</a></li>
                                    <li><a href="#">Suits</a></li>
                                    <li><a href="#">Jeans</a></li>
                                    <li><a href="#">T-Shirts</a></li>
                                    <li><a href="#">Lowers</a></li>
                                    <li><a href="#">Bras</a></li>
                                    <li><a href="#">Kurti</a></li>

                                </ul>
                            </li>
                            <li><a href="SignUp.aspx">SignUp</a></li>
                            <li class="active"><a href="SignIn.aspx">SignIn</a></li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <%--SignIn Form Start--%>

        <div class="container">
        <div class="row formpadding">
             <div class="col-md-3"></div>
            <div class="col-md-6 form">
            <div class="row">
                <div class="form-horizontal">
                    <h2 class="text-center mt-10">Login Form</h2>
                   
                    <br />
                    <br />
                    <div>
                        <asp:Label ID="Label1" CssClass="col-md-4 control-label" runat="server" Text="UserName" ></asp:Label>
                        <div class="col-md-6">
                            <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server"  ErrorMessage="Please Enter User Name" ControlToValidate="txtUsername" ForeColor="Red" ></asp:RequiredFieldValidator>
                            </div>
                    </div>

                    <div>
                        <asp:Label ID="Label2" CssClass="col-md-4 control-label" runat="server" Text="Password" ></asp:Label>
                        <div class="col-md-6">
                            <asp:TextBox ID="txtPass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass="text-danger" runat="server" ErrorMessage="Please Enter Valid Password" ControlToValidate="txtPass" ForeColor="Red" ></asp:RequiredFieldValidator>
                        
                        </div>
                    </div>
                    <div class="col-md-6">
                       <div class="text-center">
                            <asp:Button ID="Button1" CssClass="col-lg-offset-5 btn btn-success" runat="server" Text="LogIn&raquo;" OnClick="btnlogin_Click" />
                           
                       </div>
                    </div>
                    <div class="col-md-6">
                      <div class="float-left">
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                            <asp:Label ID="Label3" CssClass=" control-label"  runat="server" Text="Remember me"></asp:Label>
                        </div>
                        </div>
                  
                    <div class="col-md-12 mt-20 text-center">
                         <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/SignUp.aspx">I don't have an Account</asp:HyperLink>
                    </div>
                     
                    <div>
                      
                            <asp:Label ID="lblError" CssClass="text-danger" runat="server" ></asp:Label>
                       
                    </div>

                </div>
            </div>
            </div>
             <div class="col-md-3"></div>
        </div>
        <%--SignIn Form End--%>
        </div>

        <%--Footer Contentes Start--%>
        <hr />
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy;2020 Ashish.in &middot; <a href="Default.aspx">Home</a> &middot; <a href="#">About</a>&middot; <a href="#">Contact</a>&middot; <a href="#">Product</a></p>
            </div>
        </footer>
        <%--Footer Contentes End--%>
    </form>
</body>
</html>
