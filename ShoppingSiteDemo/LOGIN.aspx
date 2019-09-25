<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LOGIN.aspx.cs" Inherits="LOGIN" %>

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
  <title>Ecart Login</title>
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <link href="css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Login</div>
      <div class="card-body">
        <form runat="server">
        <div class="form-group">
            <asp:Label  runat="server">Email address</asp:Label>
            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"   placeholder="Enter email"/>
        </div>
            <br />
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="TextBox2" type="password" placeholder="Password"/>
        </div>
        <div class="form-group">
            
        </div>
            
        <asp:Button runat="server" CssClass="btn btn-primary btn-block" OnClick="Button1_Click" Text="Login"></asp:Button>
    <div class="form-check">
        <br />
        <asp:Label CssClass="form-check-label" ID="lbl" ForeColor="Red" runat="server" Font-Bold="true" />

    </div>
            <br />
        <div class="text-center">
            <asp:HyperLink ID="Id1" CssClass="d-block small mt-3" runat="server" NavigateUrl="~/register.aspx" >Register an Account</asp:HyperLink>
            <asp:HyperLink ID="Id2" runat="server" CssClass="d-block small" NavigateUrl="~/forgot-password.aspx" Height="19px">Forgot Password?</asp:HyperLink>
        </div>
    </form>
      </div>
    </div>
  </div>
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>