﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HW1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    
    <link href="https://cdn.jsdelivr.net/npm/bootswatch@5.2.3/dist/flatly/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>


    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.maskedinput/1.4.1/jquery.maskedinput.min.js"></script>
    

    <script>
        $(function () {
            $("#CardNumTextBox").mask("9999  9999  9999  9999");
            $("#ValidDateTextBox").mask("99/99");
        });
    </script>
</head>
<body background="images/45101.jpg" style="background-size:contain">
    <form id="form1" runat="server">
        <div class="d-flex justify-content-center" style="height: 100vh;">
            <div class="my-auto container">
                <div class="row">
                <div class="col-md-6 mx-auto">
                    <br />
                    <div class="card text-white bg-primary">
                        <div class="card-header"><h4><strong>Card information</strong></h4></div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <%-- Name On Card --%>
                                    <div class="row">
                                        <label class="form-label"><strong>Your name on card:</strong></label>
                                        <div class="form-group d-flex flex-row align-items-center">                                 
                                            <asp:TextBox CssClass="form-control" ID="NameTextBox" runat="server" placeholder="Firstname Lastname" ControlToValidate="NameTextBox" AutoPostBack="true" OnTextChanged="NameTextBox_TextChanged"></asp:TextBox>
                                        </div>
                                        <div class="form-text" style="font-size:12px; letter-spacing:1px;">
                                            <asp:Label ID="NameTxtRequiredLbl" ForeColor="#ff3333" Font-Bold="true" runat="server" Text="" ></asp:Label>
                                        </div>
                                    </div>
                                    <%-- Card No. --%>
                                    <div class="row" style="padding-top:15px;">
                                        <label class="form-label"><strong>Card number</strong></label>
                                        <div class="form-group d-flex flex-row align-items-center input-group">    
                                            <div class="input-group-text">
                                                <asp:Label ID="CardTypeIcon" runat="server"><i class="fa fa-credit-card" style="font-size:24px"></i></asp:Label>
                                            </div> 
                                            <asp:TextBox CssClass="form-control" ID="CardNumTextBox" runat="server" OnTextChanged="CardNumTextBox_TextChanged" AutoPostBack="true" placeholder="**** **** **** ****" ></asp:TextBox>
                                        </div>
                                        <div class="form-text" style="font-size:10px">
                                            <asp:Label ID="CardNoRequiredTxtLbl" runat="server" Text="" ForeColor="#ff3333" Font-Bold="true"></asp:Label>
                                        </div>
                                        <div class="form-text" style="font-size:12px">
                                            <span>Supported cards:</span>
                                            <i class="fa fa-cc-visa" style="font-size:15px"></i>
                                            <i class="fa fa-cc-mastercard" style="font-size:15px"></i>
                                            <i class="fa fa-cc-jcb" style="font-size:15px"></i>
                                            <i class="fa fa-cc-discover" style="font-size:15px"></i>
                                        </div>
                                    </div>
                                    <%-- Valid date and CVC --%>
                                    <div class="row" style="padding-top:15px;">
                                        <div class="col-4">
                                            <label class="form-label"><strong>Valid date</strong></label>
                                            <div class="form-group d-flex flex-row align-items-center">
                                                <asp:TextBox CssClass="form-control" ID="ValidDateTextBox" runat="server" placeholder="mm/yy" AutoPostBack="true" OnTextChanged="ValidDateTextBox_TextChanged" ></asp:TextBox> 
                                            </div>
                                            <div class="form-text" style="font-size:10px">
                                                <asp:Label ID="DateRequiredTxtLbl" runat="server" Text="" ForeColor="#ff3333" Font-Bold="true"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <label class="form-label"><strong>CVC</strong></label>
                                            <div class="form-group d-flex flex-row align-items-center">
                                                <asp:TextBox CssClass="form-control" ID="CVCTextBox" runat="server" MaxLength="3" placeholder="***" ></asp:TextBox>
                                            </div>
                                            <div class="form-text" style="font-size:10px">
                                                <asp:Label ID="CvcRequiredTxtLbl" runat="server" Text="" ForeColor="#ff3333" Font-Bold="true"></asp:Label>
                                            </div>
                                        </div>
                                    
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="form-group d-flex justify-content-center">
                                        <asp:Button CssClass="btn btn-outline-success" ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />                                
                                    </div>
                                    </div>
                                    
                                </div>
                                <%-- Card --%>
                                <div class="col">
                                    <br />
                                    <div class="card card-debit flex-grow" style="margin-left: 0px; padding: 0px;">                                      
                                        <div class="card-body">
                                            <div class="row">
                                                <h4>Your Card</h4>
                                            </div>
                                            <br />
                                            <br />
                                            <div class="row" style="margin-left: 10px;">
                                                <div class="col">
                                                    <asp:Label ID="CardNoLabel" runat="server" Font-Size="Large" style="letter-spacing: 2px;" Text="XXXX XXXX XXXX XXXX" ></asp:Label>
                                                </div>
                                            </div>
                                            <div class="row" style="margin-left: 130px; margin-top:10px;">
                                                <div class="col">
                                                    <asp:Label ID="CardValidDateLabel" runat="server"  Font-Size="Small" Text="mm/yy" ></asp:Label>
                                                </div>
                                            </div>
                                            <div class="row" >
                                                <div class="col-9">
                                                    <asp:Label ID="NameOnCardLabel" style="letter-spacing: 1px; font-size: 12px" Font-Bold="true" runat="server" Text="FirstName  LastName"></asp:Label>
                                                </div>
                                                <div class="col">
                                                    <asp:Label ID="CardTypeLabel" runat="server" ><i class="fa fa-credit-card" style="font-size:36px"></i></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    
                                    <asp:Panel ID="AlertPanel" CssClass="alert alert-dismissible alert-success" runat="server" Visible="false">
                                        
                                          <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                                          <asp:Label ID="ErrorLbl" runat="server" Text="" Font-Bold="true"></asp:Label>
                                        
                                    </asp:Panel>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                
                
                
            </div>
        </div>
    </form>



    <style>
.card-debit {
  width: 300px;
  height: 200px;
  background: linear-gradient(141deg, #0fb8ad 0%, #1fc8db 51%, #2cb5e8 75%);
  border: 1px solid #ccc;
  border-radius: 10px;
  padding: 20px;
  box-shadow: 0px 2px 6px rgba(0,0,0,0.3);
}
</style>
</body>
</html>
