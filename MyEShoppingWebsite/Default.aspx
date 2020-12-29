<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My E-Shopping website</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=">
    <meta http-equiv="X-UA-Compatible" content="Chrome">
    <link href="css/Custom.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        .margin{
            padding-top:30px;
        }
        .about image{
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       

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
                            <li class="active"><a href="Default.aspx">Home</a></li>
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
                                <li><a href="SignIn.aspx">SignIn</a></li>

                        </ul>
                    </div>

                </div>

            </div>

            <%--ImageSlider--%>
            <div class="container">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                        <li data-target="#myCarousel" data-slide-to="3"></li>

                        <%--<li data-target="#myCarousel" data-slide-to="3"class="active"></li>--%>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="Imageslider/Banner.jpg" alt="Los Angeles" style="width:100%; height:600px">
                            <div class="carousel-caption">
                                <h3>Women Shopping</h3>
                                <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
                                <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy Now</a></p>
                            </div>
                        </div>

                        <div class="item ">
                            <img src="Imageslider/Banner3.jpg" alt="Los Angeles" style="width: 100%; height:600px">
                            <div class="carousel-caption">
                                <h3>Coats for Unisex</h3>
                                <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
                                <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy Now</a></p>

                            </div>
                        </div>

                        <div class="item">
                            <img src="Imageslider/Banner2.jpg" alt="Chicago" style="width: 100%; height:600px">
                            <div class="carousel-caption">
                                <h3>Chania</h3>
                                <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
                                <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy Now</a></p>

                            </div>
                        </div>

                        <div class="item">
                            <img src="Imageslider/Banner3.jpg" alt="New york" style="width: 100%;">
                            <div class="carousel-caption">

                                <h3>Chania</h3>
                                <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
                                <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy Now</a></p>

                            </div>
                        </div>
                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>

            <%--ImageSlider End--%>
  

        <%--Middle Content start--%>
        <hr />
        <div class="container center ">
            <div class="row">
                <div class="col-md-4 about">
                    <img class="img-circle" src="Mobile/cg.jpg" alt="thumb" width="140" height="140" />
                    <h2>One Plus 8T</h2>
                    <p>
                        OnePlus 8T is a high-end smartphone from the brand, with 128GB storage space, best in class 8GB RAM, accompanied by an excellent display setup. Further, the quad-camera layout teamed with a 16MP selfie shooter makes it a stunning offering for photoholics. 
                       The smartphone comes with Dolby atmos speakers to fulfill your audio requirements. However, the non-expandable memory might be a cause of buyers' dissatisfaction. OnePlus 8T features a 6.55-inch FHD+ Fluid AMOLED display, having a screen resolution of 1080 
                       
                    </p>
                   
                    <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>
                </div>  



                <div class="col-md-4 about">
                    <img class="img-circle" src="Images/sh.jpeg" alt="thumb" width="140" height="140" />
                    <h2>Footwear</h2>
                    <p>Awesome shoe and same as shown in picture I. Flipkart app no damage and great work keep it up flipkart and keep improving for best service and I want that one thing that image search option like as my Tra or any other app to make easy searches for products thank you great job flipkart Bank Offer10% off on SBI Credit Cards, up to ₹1500. On orders of ₹5000 and aboveT&C...</p>
                    <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>
                </div>


                <div class="col-md-4 about">
                    <img class="img-circle" src="Images/cl.jpg" alt="thumb" width="140" height="140" />
                    <h2>Clothes</h2>
                    <p>OnePlus 8T is a high-end smartphone from the brand, with 128GB storage space, best in class 8GB RAM, accompanied by an excellent display setup. Further, the quad-camera layout teamed with a 16MP selfie shooter makes it a stunning offering for photoholics. The smartphone comes with Dolby atmos speakers to fulfill your audio requirements.However, the non-expandable memory might be a cause of buyers' dissatisfaction. OnePlus 8T presents an impressive quad camera setup with a 48MP Wide Angle Primary Sensor, 16MP Ultra-Wide Angle Lens...</p>
                    
                    <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>

                </div>
            </div>


            </div>

            <%--Middle Content End--%>
  
            <%--Footer Contentes Start--%>
        <hr />
        <footer >
        <div class="container">
            <p class="pull-right" ><a href="#">Back to top</a></p>
            <p>&copy;2020 Ashish.in &middot; <a href="Default.aspx">Home</a> &middot; <a href="#">About</a>&middot; <a href="#">Contact</a>&middot; <a href="#">Product</a></p>
        </div>
            </footer>
            <%--Footer Contentes End--%>

        
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js">
    </script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
