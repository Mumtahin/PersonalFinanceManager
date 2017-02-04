<%@ Page Title="Finance Manager" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <div class="container">
            <h1><strong>Finance</strong>Manager</h1>
        </div>
        <h4 class="text-center sub-head">Enter the relevent details:</h4>
    </div>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="panel panel-default panel-shadow">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-home"></i>
                                    Home</h3>
                            </div>
                            <div class="panel-body">

                                <div class="row">
                                    <div class="col-xs-4">
                                        <asp:Label ID="rentLabel" runat="server" CssClass="" Text="Rent" ValidateRequestMode="Enabled"></asp:Label>
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="rentTextBox" runat="server" CssClass="form-control" placeholder="Rent"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="rentExpressionValidator" ControlToValidate="rentTextBox" runat="server" ErrorMessage="Please enter valid price" ValidationExpression="((\d+)((\.\d{1,2})?))$" />
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="rentDropDownList" runat="server" CssClass="form-control">
                                            <asp:ListItem Selected="True" Value="4">Weekly</asp:ListItem>
                                            <asp:ListItem Value="1">Monthly</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-xs-4">
                                        <asp:Label ID="furnitureLabel" runat="server" Text="Furniture" ValidateRequestMode="Enabled"></asp:Label>
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="furnitureTextBox" runat="server" CssClass="form-control" placeholder="Furniture"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="furnitureExpressionValidator1" ControlToValidate="furnitureTextBox" runat="server" ErrorMessage="Please enter valid price" ValidationExpression="((\d+)((\.\d{1,2})?))$" />
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="furnitureDropDownList" runat="server" CssClass="form-control">
                                            <asp:ListItem Selected="True" Value="1">Monthly</asp:ListItem>
                                            <asp:ListItem Value="1/12">Yearly</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-xs-4">
                                        <asp:Label ID="homeMaintenanceLabel" runat="server" Text="Home maintenance and repair" ValidateRequestMode="Enabled"></asp:Label>
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="homeMaintenanceTextBox" runat="server" CssClass="form-control" placeholder="Maintenance"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="homeExpressionValidator1" ControlToValidate="homeMaintenanceTextBox" runat="server" ErrorMessage="Please enter valid price" ValidationExpression="((\d+)((\.\d{1,2})?))$" />
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="homeMaintenanceDropDownList" runat="server" CssClass="form-control">
                                            <asp:ListItem Selected="True" Value="4">Weekly</asp:ListItem>
                                            <asp:ListItem Value="1">Monthly</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="panel panel-default panel-shadow">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-bus"></i> Automobile and Travel</h3>
                            </div>
                            <div class="panel-body">

                                <div class="row">
                                    <div class="col-xs-4">
                                        <asp:Label ID="vehicleLabel" runat="server" Text="Vehicle Maintenance"></asp:Label>
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="vehicleTextBox" runat="server" CssClass="form-control" placeholder="Maintenance"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="vehicleExpressionValidator1" ControlToValidate="vehicleTextBox" runat="server" ErrorMessage="Please enter valid price" ValidationExpression="((\d+)((\.\d{1,2})?))$" />
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="vehicleDropDownList" runat="server" CssClass="form-control">
                                            <asp:ListItem Selected="True" Value="4">Weekly</asp:ListItem>
                                            <asp:ListItem Value="1">Monthly</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-xs-4">
                                        <asp:Label ID="transportLabel" runat="server" Text="Public Transport"></asp:Label>
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="transportTextBox" runat="server" CssClass="form-control" placeholder="Transport"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="transportExpressionValidator1" ControlToValidate="transportTextBox" runat="server" ErrorMessage="Please enter valid price" ValidationExpression="((\d+)((\.\d{1,2})?))$" />
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="transportDropDownList" runat="server" CssClass="form-control">
                                            <asp:ListItem Selected="True" Value="4">Weekly</asp:ListItem>
                                            <asp:ListItem Value="1">Monthly</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-xs-4">
                                        <asp:Label ID="taxiLabel" runat="server" Text="Taxi"></asp:Label>
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="taxiTextBox" runat="server" CssClass="form-control" placeholder="Taxi"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="taxiExpressionValidator1" ControlToValidate="taxiTextBox" runat="server" ErrorMessage="Please enter valid price" ValidationExpression="((\d+)((\.\d{1,2})?))$" />
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="taxiDropDownList" runat="server" CssClass="form-control">
                                            <asp:ListItem Selected="True" Value="4">Weekly</asp:ListItem>
                                            <asp:ListItem Value="1">Monthly</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <%--<div class="row">
                                        <div class="col-md-4">
                                            <br />
                                        </div>
                                        <div class="col-md-4">
                                        </div>
                                        <div class="col-md-4">
                                        </div>
                                    </div>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="panel panel-default panel-shadow">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-medkit"></i> Health, Fitness and Diet</h3>
                            </div>
                            <div class="panel-body">

                                <div class="row">
                                    <div class="col-xs-4">
                                        <asp:Label ID="foodDrinkLabel" runat="server" Text="Food and Drink"></asp:Label>
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="foodDrinkTextBox" runat="server" CssClass="form-control" placeholder="Rent"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="foodDrinkExpressionValidator1" ControlToValidate="foodDrinkTextBox" runat="server" ErrorMessage="Please enter valid price" ValidationExpression="((\d+)((\.\d{1,2})?))$" />
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="foodDrinkDropDownList" runat="server" CssClass="form-control">
                                            <asp:ListItem Selected="True" Value="28">Daily</asp:ListItem>
                                            <asp:ListItem Value="4">Weekly</asp:ListItem>
                                            <asp:ListItem Value="1">Monthly</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-xs-4">
                                        <asp:Label ID="healthLabel" runat="server" Text="Health and fitness"></asp:Label>
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="healthTextbox" runat="server" CssClass="form-control" placeholder="Rent"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="healthExpressionValidator1" ControlToValidate="healthTextbox" runat="server" ErrorMessage="Please enter valid price" ValidationExpression="((\d+)((\.\d{1,2})?))$" />
                                    </div>
                                    <div class="col-xs-4 left">
                                        <asp:RadioButton ID="healthRadioButton1" runat="server" Checked="true" />
                                        Monthly
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="panel panel-default panel-shadow">
                            <div class="panel-heading">
                                <h3 class="panel-title">Utilities and Others</h3>
                            </div>
                            <div class="panel-body">

                                <div class="row">
                                    <div class="col-xs-4">
                                        <asp:Label ID="communications" runat="server" Text="Telecommunications"></asp:Label>
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="CommunicationsTextBox" runat="server" CssClass="form-control" placeholder="Rent"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="communicationsExpressionValidator1" ControlToValidate="communicationsTextbox" runat="server" ErrorMessage="Please enter valid price" ValidationExpression="((\d+)((\.\d{1,2})?))$" />
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:RadioButton ID="communicationsRadioButton1" runat="server" Checked="true" />
                                        Monthly
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-xs-4">
                                        <asp:Label ID="electricityLabel" runat="server" Text="Electricity bill "></asp:Label>
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="electricityTextBox" runat="server" CssClass="form-control" placeholder="Rent"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="electricityExpressionValidator1" ControlToValidate="electricityTextBox" runat="server" ErrorMessage="Please enter valid price" ValidationExpression="((\d+)((\.\d{1,2})?))$" />
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:RadioButton ID="electricityRadioButton1" runat="server" Checked="true" />
                                        Monthly
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-xs-4">
                                        <asp:Label ID="entertainmentLabel" runat="server" Text="Entertainment"></asp:Label>
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="entertainmentTextBox" runat="server" CssClass="form-control" placeholder="Rent"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="entertainmentExpressionValidator1" ControlToValidate="entertainmentTextBox" runat="server" ErrorMessage="Please enter valid price" ValidationExpression="((\d+)((\.\d{1,2})?))$" />
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="entertainmentDropDownList" runat="server" CssClass="form-control">
                                            <asp:ListItem Selected="True" Value="4">Weekly</asp:ListItem>
                                            <asp:ListItem Value="1">Monthly</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-xs-4">
                                        <asp:Label ID="clothingLabel" runat="server" Text="Clothing"></asp:Label>
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:TextBox ID="clothingTextBox" runat="server" CssClass="form-control" placeholder="Rent"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="clothingExpressionValidator1" ControlToValidate="clothingTextBox" runat="server" ErrorMessage="Please enter valid price" ValidationExpression="((\d+)((\.\d{1,2})?))$" />
                                    </div>
                                    <div class="col-xs-4">
                                        <asp:DropDownList ID="clothingDropDownList" runat="server" CssClass="form-control">
                                            <asp:ListItem Selected="True" Value="4">Weekly</asp:ListItem>
                                            <asp:ListItem Value="1">Monthly</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </ContentTemplate>
    </asp:UpdatePanel>

    <div class="buttonClass">
        <asp:Button ID="CalcButton" runat="server" Text="Calculate" CssClass="btn btn-default btn-lg" OnClick="CalcButton_Click" />
    </div>

    <br />

    <div class="container" id="results">
        <div class="row">
            <div class="col-xs-12">
                <div class="panel panel-default panel-shadow">
                    <div class="panel-heading">
                        <h3 class="panel-title">Calculations</h3>
                    </div>
                    <div class="panel-body">
                        <div class="results-text-section">
                            <div class="row">
                                <asp:Label ID="totalWeeklyTextLabel" runat="server" Text="" CssClass="resultsString" Font-Size="16px" Font-Bold="true"></asp:Label>
                            </div>
                            <div class="row">
                                <asp:Label ID="totalMonthlyTextLabel" runat="server" Text="" CssClass="resultsString" Font-Size="16px"></asp:Label>
                                <asp:Label ID="totalYearlyTextLabel" runat="server" Text="" CssClass="resultsString" Font-Size="16px"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <asp:DropDownList ID="chartsDropDownList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="chartsDropDownList_SelectedIndexChanged" CssClass="form-control">
                                <asp:ListItem Selected="True" Value="doughnut">doughnut</asp:ListItem>
                                <asp:ListItem Value="pie">pie</asp:ListItem>
                                <asp:ListItem Value="bar">bar</asp:ListItem>
                                <asp:ListItem Value="line">line</asp:ListItem>
                                <asp:ListItem Value="column">column</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="row" style="height: 400px">
                            <div id="chartContainer"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
