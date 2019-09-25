﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TV.aspx.cs" Inherits="TV" %>

<!DOCTYPE html>
<html lang="en">

<head>
     <script type="text/javascript">
    function HideLabel() {
        var seconds = 3;
        setTimeout(function () {
            document.getElementById("<%=lbl.ClientID %>").style.display = "none";
        }, seconds * 1000);
        };
</script>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>E-cart TVs</title>
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <link href="css/sb-admin.css" rel="stylesheet">
    <style type="text/css">
        .auto-style1 {
            width: 832px;
            height: 523px;
        }
    </style>
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
    <form runat ="server">
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="ProductPage.aspx">E-cart</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
       
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Clothes">
         <asp:HyperLink  NavigateUrl="Clothes.aspx" runat="server" class="nav-link">
            <i class="fa fa-male"></i>
            <span class="nav-link-text">Clothes</span>
          </asp:HyperLink>
        </li>
		<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Electronics">
          <asp:HyperLink runat="server" class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseMulti" data-parent="#exampleAccordion">
            <i class="fa fa-tv"></i>
            <span class="nav-link-text">Electronics</span>
          </asp:HyperLink>
          <ul class="sidenav-second-level collapse" id="collapseMulti">
             <li>
              <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="TV.aspx">TVs</asp:HyperLink>
            </li>
    
            <li>
              <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Ref.aspx">Refrigerator</asp:HyperLink>
            </li>
            <li>
                      <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="Lap.aspx">Laptops</asp:HyperLink>
            </li>
          </ul>
        </li>
		
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="My cart">
          <asp:Hyperlink  ID="HyperLink9" runat="server" class="nav-link" NavigateUrl="~/Cart.aspx">
            <i class="fa fa-opencart"></i>
            <span class="nav-link-text">My Cart Items</span>
          </asp:Hyperlink>
        </li>
          <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Seller Panel">
          <asp:HyperLink runat="server" class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages" data-parent="#exampleAccordion">
             <i class="fa fa-address-book"></i>
            <span class="nav-link-text">Seller Panel</span>
          </asp:HyperLink>
          <ul class="sidenav-second-level collapse" id="collapseExamplePages">
            <li>
              <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/ADD.aspx">Add Items</asp:HyperLink>
            </li>
    
            <li>
              <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/List.aspx">Item List</asp:HyperLink>
            </li>
           </ul>
              </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Account Settings">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-wrench"></i>
            <span class="nav-link-text">Account Settings</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseComponents">
		  
            <li>
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="forgot-password.aspx">Forgot Password Page</asp:HyperLink>
            </li>
            <li>
              <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="update.aspx">Update Details</asp:HyperLink>
            </li>
          </ul>
        </li>
          
		
		<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Logut">
             <asp:LinkButton runat="server" class="nav-link" OnClick="LinkButton_Click">
            <i class="fa fa-fw fa-sign-out"></i>
            <span class="nav-link-text">Logut</span>
          </asp:LinkButton>
        </li>
      
        
      </ul>
        <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
        </div>
      </nav>
        
   
   
     <div class="content-wrapper">
    <div class="container-fluid">
      
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <asp:HyperLink ID="HyperLink4" navigateUrl="~/ProductPage.aspx" runat="server">E-cart</asp:HyperLink>
        </li>
        <li class="breadcrumb-item active">TVs</li>
      </ol>
      <div class="row">
        <div class="col-12">
          <h1>TVs</h1>
            <br />
         
            <asp:Label ID="lbl" Font-Bold="true" runat="server"></asp:Label>
            <br />
            <asp:table runat="server" CellSpacing="15" CellPadding="15" Height="256px" ForeColor="#343a40">
                <asp:Tablerow runat="server">
                   <asp:TableCell runat="server">
                        <asp:label runat="server" ID="Label1" Font-Bold="true" Visible="false">4</asp:label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:label runat="server" ID="Label2" Font-Bold="true" Visible="false">5</asp:label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:label runat="server" ID="Label3" Font-Bold="true" Visible="false">6</asp:label>
                    </asp:TableCell>
                </asp:Tablerow>
                
                
                <asp:Tablerow runat="server">
                   <asp:TableCell runat="server">
                        <asp:Image ID="Image1" runat="server"  ImageUrl="~/Images/1.jpeg"  Height="150px"></asp:Image>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/2.jpeg" Height="150px"></asp:Image>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/3.jpeg" Height="150px"></asp:Image>
                    </asp:TableCell>
                </asp:Tablerow>
                
                <asp:Tablerow runat="server">
                   <asp:TableCell runat="server">
                        <asp:label runat="server" ID="L1" Font-Bold="true">Sony Bravia 81cm (32 inch) Full HD LED TV</asp:label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:label runat="server" ID="L2" Font-Bold="true">Sony Bravia 101cm (40 inch)Ulta HD LED TV</asp:label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:label runat="server" ID="L3" Font-Bold="true">Sony Bravia 139cm (55 inch) 4K Ulta HD LED TV</asp:label>
                    </asp:TableCell>
                </asp:Tablerow>
                   <asp:Tablerow runat="server">
                   <asp:TableCell runat="server">
                        <asp:label runat="server" ID="Label4" Font-Bold="true">Product Price is(Rs.)</asp:label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:label runat="server" ID="Label5" Font-Bold="true">Product Price is(Rs.)</asp:label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:label runat="server" ID="Label6" Font-Bold="true">Product Price is(Rs.)</asp:label>
                    </asp:TableCell>
                </asp:Tablerow>

                 <asp:Tablerow runat="server">
                   <asp:TableCell runat="server">
                        <asp:label runat="server" ID="L4" Font-Bold="true">35000</asp:label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:label runat="server" ID="L5" Font-Bold="true">45000</asp:label>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:label runat="server" ID="L6" Font-Bold="true">85000</asp:label>
                    </asp:TableCell>
                </asp:Tablerow>
                
                <asp:Tablerow runat="server">
                    
                   <asp:TableCell runat="server">
                       <asp:ImageButton ID="ImageButton1" ImageUrl="~/Images/4.png" runat="server" OnClick="Button1_Click" />
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:ImageButton ID="ImageButton2" ImageUrl="~/Images/4.png" runat="server" OnClick="Button2_Click" />
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:ImageButton ID="ImageButton3" ImageUrl="~/Images/4.png" runat="server" OnClick="Button3_Click"/>
                    </asp:TableCell>
                        
                </asp:Tablerow>
                    
                
              

            </asp:table> 
        
            
        </div>
      </div>
    </div>
         
        
     <footer class="sticky-footer"> </footer>   
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
         
  
    
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
    <script src="js/sb-admin.min.js"></script>
    <script src="js/sb-admin-datatables.min.js"></script>
    <script src="js/sb-admin-charts.min.js"></script>
  </div>
        </form>
</body>

</html>

