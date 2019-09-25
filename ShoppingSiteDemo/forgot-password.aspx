<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgot-password.aspx.cs" Inherits="Forgot_password" %>

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
  <title>Forgot-Password Page</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Reset Password</div>
      <div class="card-body">
        <div class="text-center mt-4 mb-5">
          <h4>Forgot your password?</h4>
            <br />
        
          <p>Enter your email address and We will send you Password.</p>
        </div>
        <form runat="server">
          <div class="form-group" >
              <div>
            <asp:TextBox ID="TextBox1" Class="form-control" runat="server"></asp:TextBox> <br />
                  </div>

              <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" class="btn btn-primary btn-block">Send Password</asp:LinkButton>
              <br />
              <asp:label  id="lbl" runat="server" Font-Bold="true" ></asp:label>

          </div>
        </form>
        <div class="text-center" style ="align-content:center">
          <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="LOGIN.aspx" class="d-block small" >Login</asp:HyperLink>
        </div>
      </div>
    </div>
  </div>

  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>
