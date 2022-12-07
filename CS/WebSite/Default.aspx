<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxHtmlEditor" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxSpellChecker.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSpellChecker" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="AccessDataSource1" AllowPaging="True">
            <ItemTemplate>
                <dx:ASPxHtmlEditor ID="ASPxHtmlEditor1" runat="server" Html='<%# Bind("Html") %>'>
                    <Settings AllowDesignView="False" AllowHtmlView="False" />
                </dx:ASPxHtmlEditor>
            </ItemTemplate>
        </asp:FormView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/HtmlEditorSampleDB.mdb"
            SelectCommand="SELECT * FROM [Html]">
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
