<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Home</title>
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
                            <asp:Button ID="btnlogout" CssClass="btn btn-default navbar-btn" runat="server" Text="Log Out" />

                        </ul>
                    </div>
                </div>
            </div>
        </div> 
        <br />
        <br />
        <div class="container">
            <div class="row">
                <div class="col-md-12" style="margin:70px 30px 30px">
                    <asp:Label ID="lblSuccess" runat="server" CssClass="text-success"></asp:Label>
                </div>
            </div>
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
    </body></html>