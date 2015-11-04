<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ManageLocations.aspx.cs" Inherits="GeneralAdmin_ManageLocations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ObjectDataSource runat="server" ID="LocationDataSource" OldValuesParameterFormatString="original_{0}" SelectMethod="ListLocations" TypeName="WorkSchedule.Framework.BLL.LocationController" DataObjectTypeName="WorkSchedule.Framework.Entities.Location" InsertMethod="AddNewLocation" UpdateMethod="UpdateLocation"></asp:ObjectDataSource>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="LocationDataSource" InsertItemPosition="LastItem">
        <EditItemTemplate>
            <table class="table table-striped">
                <tr style="" class="row">
                    <td class="col-md-1">
                        <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                        <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                    </td>
                    <td class="col-md-1">
                        <asp:TextBox Text='<%# Bind("LocationID") %>' runat="server" ID="LocationIDTextBox" /></td>
                    <td class="col-md-2">
                        <asp:TextBox Text='<%# Bind("Name") %>' runat="server" ID="NameTextBox" /></td>
                    <td class="col-md-2">
                        <asp:TextBox Text='<%# Bind("Street") %>' runat="server" ID="StreetTextBox" /></td>
                    <td class="col-md-1">
                        <asp:TextBox Text='<%# Bind("City") %>' runat="server" ID="CityTextBox" /></td>
                    <td class="col-md-1">
                        <asp:TextBox Text='<%# Bind("Province") %>' runat="server" ID="ProvinceTextBox" /></td>
                    <td class="col-md-1">
                        <asp:TextBox Text='<%# Bind("Contact") %>' runat="server" ID="ContactTextBox" /></td>
                    <td class="col-md-1">
                        <asp:TextBox Text='<%# Bind("Phone") %>' runat="server" ID="PhoneTextBox" /></td>
                    <td class="col-md-1">
                        <asp:CheckBox Checked='<%# Bind("Active") %>' runat="server" ID="ActiveCheckBox" /></td>
                </tr>
            </table>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <table class="table table-striped">
                <tr style="" class="row">
                    <td class="col-md-1">
                        <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                        <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                    </td>
                    <td class="col-md-1">
                        <asp:TextBox Text='<%# Bind("LocationID") %>' runat="server" ID="LocationIDTextBox" /></td>
                    <td class="col-md-2">
                        <asp:TextBox Text='<%# Bind("Name") %>' runat="server" ID="NameTextBox" /></td>
                    <td class="col-md-2">
                        <asp:TextBox Text='<%# Bind("Street") %>' runat="server" ID="StreetTextBox" /></td>
                    <td class="col-md-1">
                        <asp:TextBox Text='<%# Bind("City") %>' runat="server" ID="CityTextBox" /></td>
                    <td class="col-md-1">
                        <asp:TextBox Text='<%# Bind("Province") %>' runat="server" ID="ProvinceTextBox" /></td>
                    <td class="col-md-1">
                        <asp:TextBox Text='<%# Bind("Contact") %>' runat="server" ID="ContactTextBox" /></td>
                    <td class="col-md-1">
                        <asp:TextBox Text='<%# Bind("Phone") %>' runat="server" ID="PhoneTextBox" /></td>
                    <td class="col-md-1">
                        <asp:CheckBox Checked='<%# Bind("Active") %>' runat="server" ID="ActiveCheckBox" /></td>
                </tr>
            </table>
        </InsertItemTemplate>
        <ItemTemplate>
            <table class="table table-striped">
                <tr style="" class="row">
                    <td class="col-md-1">
                        <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                    </td>
                    <td class="col-md-1">
                        <asp:Label Text='<%# Eval("LocationID") %>' runat="server" ID="LocationIDLabel" /></td>
                    <td class="col-md-2">
                        <asp:Label Text='<%# Eval("Name") %>' runat="server" ID="NameLabel" /></td>
                    <td class="col-md-2">
                        <asp:Label Text='<%# Eval("Street") %>' runat="server" ID="StreetLabel" /></td>
                    <td class="col-md-1">
                        <asp:Label Text='<%# Eval("City") %>' runat="server" ID="CityLabel" /></td>
                    <td class="col-md-1">
                        <asp:Label Text='<%# Eval("Province") %>' runat="server" ID="ProvinceLabel" /></td>
                    <td class="col-md-1">
                        <asp:Label Text='<%# Eval("Contact") %>' runat="server" ID="ContactLabel" /></td>
                    <td class="col-md-1">
                        <asp:Label Text='<%# Eval("Phone") %>' runat="server" ID="PhoneLabel" /></td>
                    <td class="col-md-1">
                        <asp:CheckBox Checked='<%# Eval("Active") %>' runat="server" ID="ActiveCheckBox" Enabled="false" /></td>
                </tr>
            </table>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server" class="table table-striped">
                <tr runat="server" class="row">
                    <td runat="server">
                        <table runat="server" id="itemPlaceholderContainer" style="" border="0">
                            <tr runat="server" style="" class="row">
                                <th class="col-md-1" runat="server"></th>
                                <th class="col-md-1" runat="server">LocationID</th>
                                <th class="col-md-2" runat="server">Name</th>
                                <th class="col-md-2" runat="server">Street</th>
                                <th class="col-md-1" runat="server">City</th>
                                <th class="col-md-1" runat="server">Province</th>
                                <th class="col-md-1" runat="server">Contact</th>
                                <th class="col-md-1" runat="server">Phone</th>
                                <th class="col-md-1" runat="server">Active</th>
                            </tr>
                            <tr runat="server" id="itemPlaceholder"></tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <table class="table table-striped">
            <tr style="">
                <td class="col-md-1">
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                </td>
                <td class="col-md-1">
                    <asp:Label Text='<%# Eval("LocationID") %>' runat="server" ID="LocationIDLabel" /></td>
                <td class="col-md-2">
                    <asp:Label Text='<%# Eval("Name") %>' runat="server" ID="Name" /></td>
                <td class="col-md-2">
                    <asp:Label Text='<%# Eval("Street") %>' runat="server" ID="StreetLabel" /></td>
                <td class="col-md-1">
                    <asp:Label Text='<%# Eval("City") %>' runat="server" ID="CityLabel" /></td>
                <td class="col-md-1">
                    <asp:Label Text='<%# Eval("Province") %>' runat="server" ID="ProvinceLabel" /></td>
                <td class="col-md-1">
                    <asp:Label Text='<%# Eval("Contact") %>' runat="server" ID="ContactLabel" /></td>
                <td class="col-md-1">
                    <asp:Label Text='<%# Eval("Phone") %>' runat="server" ID="PhoneLabel" /></td>
                <td class="col-md-1">
                    <asp:CheckBox Checked='<%# Eval("Active") %>' runat="server" ID="ActiveCheckBox" Enabled="false" /></td>
            </tr>
                </table>
        </SelectedItemTemplate>
    </asp:ListView>
</asp:Content>

