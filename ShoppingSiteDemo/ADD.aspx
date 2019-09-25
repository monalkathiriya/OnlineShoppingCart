<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ADD.aspx.cs" Inherits="ADD" %>
c


<!DOCTYPE html>
<html lang="en">

<head>
 <script type="text/javascript">
    function HideLabel() {
        var seconds = 4;
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
  <title>Ecart Additem</title>
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
    <form runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
            <a class="navbar-brand" href="ProductPage.aspx">E-cart</a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Clothes">
                        <asp:HyperLink NavigateUrl="Clothes.aspx" runat="server" Cssclass="nav-link">
            <i class="fa fa-male"></i>
            <span class="nav-link-text">Clothes</span>
                        </asp:HyperLink>
                    </li>
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Electronics">
                        <asp:HyperLink runat="server" Cssclass="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseMulti" data-parent="#exampleAccordion">
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
                        <asp:HyperLink ID="HyperLink9" runat="server" Cssclass="nav-link" NavigateUrl="~/Cart.aspx">
            <i class="fa fa-opencart"></i>
            <span class="nav-link-text">My Cart Items</span>
          </asp:HyperLink>
                    </li>
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Seller Panel">
                        <asp:HyperLink runat="server" Cssclass="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages" data-parent="#exampleAccordion">
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
                        <asp:LinkButton runat="server" Cssclass="nav-link" OnClick="LinkButton_Click">
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
        <li class="breadcrumb-item active">Add </li>
      </ol>     
        <asp:Label ID="lbl" runat="server" Visible="False" Font-Bold="true" ForeColor="Green">Product Registration Has Been Successfully..........</asp:Label>
<div class="container">
    <div class="card card-register mx-auto mt-5">
     <div class="card-header">Add Products Here......</div> 
            <div class="card-body">
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <label>Product ID</label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                            <br />
                        </div>
                        <div class="col-md-6">
                            <label>Product Category</label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label>Product Name</label>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                    <br />
                </div>
                <div class="form-group">
                    <label>Product Image</label>
                    <asp:FileUpload ID="pi" runat="server" CssClass="form-control"></asp:FileUpload>
                    <br />
                </div>
                <div class="form-group">
                    <label>Product Discripton</label>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                    <br />
                </div>
                <div class="form-group">
                    <label>Product Price (Rs.)</label>
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                   <br />
                </div>
                         <asp:Button ID="Button2" CssClass="btn btn-primary btn-block" runat="server" Text="ADD" OnClick="Button2_Click" /><br />
                         
                <div>
                </div>
                <br />
      </div>
    </div>
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
  
        </form>
</body>

</html>