<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductPage.aspx.cs" Inherits="ProductPage" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Main page</title>

    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
    <link href="css/sb-admin.css" rel="stylesheet">
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
    <div>
        <form runat="server">

            <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
                <asp:HyperLink ID="HyperLink4" CssClass="navbar-brand" NavigateUrl="ProductPage.aspx" runat="server">E-cart</asp:HyperLink>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">

                        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Clothes">

                            <asp:HyperLink NavigateUrl="Clothes.aspx" runat="server" CssClass="nav-link">
            <i class="fa fa-male"></i>
            <span class="nav-link-text">Clothes</span>
                            </asp:HyperLink>
                        </li>
                        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Electronics">
                            <asp:HyperLink runat="server" CssClass="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseMulti" data-parent="#exampleAccordion">
            <i class="fa fa-tv"></i>
            <span class="nav-link-text">Electronics</span>
                            </asp:HyperLink>
                            <ul class="sidenav-second-level collapse" id="collapseMulti">
                                <li>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/TV.aspx">TVs</asp:HyperLink>
                                </li>

                                <li>
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Ref.aspx">Refrigerators</asp:HyperLink>
                                </li>
                                <li>
                                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Lap.aspx">Laptops</asp:HyperLink>

                                </li>
                            </ul>
                        </li>

                        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="My Cart">
                            <asp:HyperLink ID="HyperLink9" runat="server" CssClass="nav-link" NavigateUrl="~/Cart.aspx">
            <i class="fa fa-opencart"></i>
            <span class="nav-link-text">My Cart Items</span>
                            </asp:HyperLink>
                        </li>
                        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Seller Panel">
                            <asp:HyperLink runat="server" CssClass="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages" data-parent="#exampleAccordion">
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



                        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Logut" data-target="exampleModal">
                            <asp:LinkButton runat="server" CssClass="nav-link" OnClick="LinkButton_Click"  >
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
        </form>


        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
        <script src="vendor/chart.js/Chart.min.js"></script>
        <script src="vendor/datatables/jquery.dataTables.js"></script>
        <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
        <script src="js/sb-admin.min.js"></script>
        <script src="js/sb-admin-datatables.min.js"></script>
        <script src="js/sb-admin-charts.min.js"></script>
    </div >

</body>

</html>

