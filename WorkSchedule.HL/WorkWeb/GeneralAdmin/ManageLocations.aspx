<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ManageLocations.aspx.cs" Inherits="GeneralAdmin_ManageLocations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ObjectDataSource runat="server" ID="LocationDataSource" OldValuesParameterFormatString="original_{0}" SelectMethod="ListLocations" TypeName="WorkSchedule.Framework.BLL.LocationController"></asp:ObjectDataSource>
    <asp:ListView runat="server" ID="LocationsListView" DataSourceID="LocationDataSource">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Label Text='<%# Eval("LocationID") %>' runat="server" ID="LocationIDLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Name") %>' runat="server" ID="NameLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Street") %>' runat="server" ID="StreetLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("City") %>' runat="server" ID="CityLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Province") %>' runat="server" ID="ProvinceLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Contact") %>' runat="server" ID="ContactLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Phone") %>' runat="server" ID="PhoneLabel" /></td>
                <td>
                    <asp:CheckBox Checked='<%# Eval("Active") %>' runat="server" ID="ActiveCheckBox" Enabled="false" /></td>
                <td>
                    <asp:Label Text='<%# Eval("PlacementContracts") %>' runat="server" ID="PlacementContractsLabel" /></td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                    <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("LocationID") %>' runat="server" ID="LocationIDTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Name") %>' runat="server" ID="NameTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Street") %>' runat="server" ID="StreetTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("City") %>' runat="server" ID="CityTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Province") %>' runat="server" ID="ProvinceTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Contact") %>' runat="server" ID="ContactTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Phone") %>' runat="server" ID="PhoneTextBox" /></td>
                <td>
                    <asp:CheckBox Checked='<%# Bind("Active") %>' runat="server" ID="ActiveCheckBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("PlacementContracts") %>' runat="server" ID="PlacementContractsTextBox" /></td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                    <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("LocationID") %>' runat="server" ID="LocationIDTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Name") %>' runat="server" ID="NameTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Street") %>' runat="server" ID="StreetTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("City") %>' runat="server" ID="CityTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Province") %>' runat="server" ID="ProvinceTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Contact") %>' runat="server" ID="ContactTextBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Phone") %>' runat="server" ID="PhoneTextBox" /></td>
                <td>
                    <asp:CheckBox Checked='<%# Bind("Active") %>' runat="server" ID="ActiveCheckBox" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("PlacementContracts") %>' runat="server" ID="PlacementContractsTextBox" /></td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Label Text='<%# Eval("LocationID") %>' runat="server" ID="LocationIDLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Name") %>' runat="server" ID="NameLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Street") %>' runat="server" ID="StreetLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("City") %>' runat="server" ID="CityLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Province") %>' runat="server" ID="ProvinceLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Contact") %>' runat="server" ID="ContactLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Phone") %>' runat="server" ID="PhoneLabel" /></td>
                <td>
                    <asp:CheckBox Checked='<%# Eval("Active") %>' runat="server" ID="ActiveCheckBox" Enabled="false" /></td>
                <td>
                    <asp:Label Text='<%# Eval("PlacementContracts") %>' runat="server" ID="PlacementContractsLabel" /></td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table runat="server" id="itemPlaceholderContainer" style="" border="0">
                            <tr runat="server" style="">
                                <th runat="server">LocationID</th>
                                <th runat="server">Name</th>
                                <th runat="server">Street</th>
                                <th runat="server">City</th>
                                <th runat="server">Province</th>
                                <th runat="server">Contact</th>
                                <th runat="server">Phone</th>
                                <th runat="server">Active</th>
                                <th runat="server">PlacementContracts</th>
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
            <tr style="">
                <td>
                    <asp:Label Text='<%# Eval("LocationID") %>' runat="server" ID="LocationIDLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Name") %>' runat="server" ID="NameLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Street") %>' runat="server" ID="StreetLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("City") %>' runat="server" ID="CityLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Province") %>' runat="server" ID="ProvinceLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Contact") %>' runat="server" ID="ContactLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Phone") %>' runat="server" ID="PhoneLabel" /></td>
                <td>
                    <asp:CheckBox Checked='<%# Eval("Active") %>' runat="server" ID="ActiveCheckBox" Enabled="false" /></td>
                <td>
                    <asp:Label Text='<%# Eval("PlacementContracts") %>' runat="server" ID="PlacementContractsLabel" /></td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
</asp:Content>

