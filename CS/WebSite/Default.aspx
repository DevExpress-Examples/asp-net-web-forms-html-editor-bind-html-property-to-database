<%-- BeginRegion Page setup --%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="HtmlEditor_HtmlFromDatabase_HtmlFromDatabase" %>

<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v8.1" Namespace="DevExpress.Web.ASPxHtmlEditor"
    TagPrefix="dxhe" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.1" Namespace="DevExpress.Web.ASPxEditors"
    TagPrefix="dxe" %>

<%-- EndRegion --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>How to bind the Html property to a database field</title>
</head>
<body>
    <form id="form1" runat="server">
        
    <div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="AccessDataSource1" AllowPaging="True">
            <ItemTemplate>
                <dxhe:ASPxHtmlEditor ID="ASPxHtmlEditor1" runat="server" Html='<%# Bind("Html") %>'>
                    <SettingsImageUpload>
                        <ValidationSettings AllowedContentTypes="image/jpeg,image/pjpeg,image/gif,image/png,image/x-png">
                        </ValidationSettings>
                    </SettingsImageUpload>
                    <Settings AllowDesignView="False" AllowHtmlView="False" />
                </dxhe:ASPxHtmlEditor>
            </ItemTemplate>
        </asp:FormView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/HtmlEditorSampleDB.mdb"
            SelectCommand="SELECT * FROM [Html]">
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
