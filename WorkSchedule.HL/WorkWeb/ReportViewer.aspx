<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ReportViewer.aspx.cs" Inherits="ReportViewer" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ObjectDataSource ID="ODSEmployeeSkillsReport" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetReportEmployeeSkill" TypeName="WorkSchedule.Framework.BLL.ReportController"></asp:ObjectDataSource>
<rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="449px" Width="964px">
    <LocalReport ReportPath="EmployeeSkillReport.rdlc">
        <DataSources>
            <rsweb:ReportDataSource DataSourceId="ODSEmployeeSkillsReport" Name="EmployeeSkillDS" />
        </DataSources>
    </LocalReport>
</rsweb:ReportViewer>
</asp:Content>

