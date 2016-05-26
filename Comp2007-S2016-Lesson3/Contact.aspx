<%@ Page Title="Contact" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Comp2007_S2016_Lesson3.Contact" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-6 text-center">
              <h1>Contact Us</h1>
            </div>
        </div>
      <div class="row">
            <div class="col-md-4">
                 <div class="panel panel-primary">
                     <div class="panel-heading">Contact Info</div>
                     <div class="panel-body">
                        <address>
                             <strong>Austin Cameron</strong><br>
                             1 Toronto Street<br>
                            Barrie, ON L9L 9L9<br>
                            <abbr title="Phone">TEL:</abbr>
                            (705) 555-6666
                        </address>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label" for="FirstNameTextBox">First Name</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="FirstNameTextBox" placeholder="First Name" required="true"/>
                    <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is Required" ControlToValidate="FirstNameTextBox"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label class="control-label" for="LastNameTextBox">Last Name</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="LastNameTextBox" placeholder="Last Name" required="true"/>
                     <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is Required" ControlToValidate="LastNameTextBox"></asp:RequiredFieldValidator>
                </div>
                 <div class="form-group">
                    <label class="control-label" for="EmailTextBox">Email</label>
                    <asp:TextBox runat="server" TextMode="Email" CssClass="form-control" ID="EmailTextBox" placeholder="Email" required="true"/>
                      <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email is Required" ControlToValidate="EmailTextBox"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label class="control-label" for="ContactNumberTextBox">Email</label>
                    <asp:TextBox runat="server" TextMode="phone" CssClass="form-control" ID="ContactNumberTextBox" placeholder="Contact Number" required="true"/>
                     <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Contact Number is Required" ControlToValidate="ContactNumberTextBox"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label class="control-label" for="MessageTextBox">Message</label>
                    <asp:TextBox runat="server" TextMode="MultiLine" Rows="3" Columns="3" CssClass="form-control" ID="MessageTextBox" placeholder="Your Message Goes Here" required="true"/>
                     <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Message is Required" ControlToValidate="MessageTextBox"></asp:RequiredFieldValidator>
                </div>
                <div class="text-right">
                    <a class="btn btn-warning btn-lg" id="CancelButton" href="Default.aspx">Cancel</a>
                    <asp:Button runat="server" CssClass="btn btn bg-primary btn-lg" ID="SendButton" Text="Send" CausesValidation="True" Onclick="SendButton_Click"/>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
