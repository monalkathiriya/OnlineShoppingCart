<%@ Page Language="C#" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="update" %>

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
  <title>Update E-cart</title>
 
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
 
  <link href="css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">
  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">Update An Account</div>
      <div class="card-body">
        <form runat="server">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="exampleInputName">First Name</label>
                <asp:TextBox ID="TextBox1" runat="server" cssclass="form-control" Width="171px"></asp:TextBox>
                  <br />
                  <br />
              </div>
              <div class="col-md-6">
                <label for="exampleInputLastName">Last Name</label>
                <asp:TextBox ID="TextBox2" runat="server" cssclass="form-control"></asp:TextBox>              

                  <br />

                  <br />

              </div>
            </div>
          </div>

          
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                  <label for="exampleInputPassword1">Password</label>
                <asp:TextBox ID="TextBox4" runat="server"  TextMode="Password" cssclass="form-control"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
     ErrorMessage="&laquo; Required" 
     ControlToValidate="TextBox4"
     CssClass="ValidationError"
    ToolTip="Password is a REQUIRED field" ForeColor="Red"
    ></asp:RequiredFieldValidator>
                  <br />
              </div>
              <div class="col-md-6">
                <label for="exampleConfirmPassword">Confirm Password</label>
                <asp:TextBox ID="TextBox5" runat="server"  TextMode="Password" cssclass="form-control"></asp:TextBox>
                <asp:CompareValidator ID="CompareFieldValidator1" runat="server" ControlToValidate="TextBox5" ForeColor="Red" ControlToCompare="TextBox4" ErrorMessage = "Not Matching With Password" ToolTip="Password must be same"></asp:CompareValidator>
              

              </div>
            </div>
          </div>
            <asp:Button ID="Button2" cssclass="btn btn-primary btn-block" runat="server" Text="Update" OnClick="Button2_Click" /><br />

            </form>
          <div>
              <asp:label  id="lbl" runat="server" ForeColor="green" Visible="false" Font-Bold="true" >Your Account Data Updated Successfully......</asp:label>
          </div>
          <br />
          <br />

          </div>
    </div>
  </div>
          
  
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>
