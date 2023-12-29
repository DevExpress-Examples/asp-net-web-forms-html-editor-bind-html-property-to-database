<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128544996/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E377)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
# HTML Editor for ASP.NET Web Forms - How to bind the Html property to a database field

This example demonstrates how to add the [ASPxHtmlEditor](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxHtmlEditor.ASPxHtmlEditor) to the [FormView](https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.formview?view=netframework-4.8.1) control's template and use the [Bind](https://learn.microsoft.com/en-us/previous-versions/aspnet/ms178366(v=vs.100)#using-the-bind-method) method to bind the editor's content to the corresponding data source field.

## Overview

Add the [FormView](https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.formview?view=netframework-4.8.1) control to the page, bind it to a data source, and specify a field to get its data from the data source.

Add the [ASPxHtmlEditor](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxHtmlEditor.ASPxHtmlEditor) to the FormView's template and specify the editor's markup - use the [Bind](https://learn.microsoft.com/en-us/previous-versions/aspnet/ms178366(v=vs.100)#using-the-bind-method) method to bind the editor's [Html](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxHtmlEditor.ASPxHtmlEditor.Html) property to the corresponding field in the FormView's data source.

```aspx
<asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="AccessDataSource1"
    AllowPaging="True">
    <ItemTemplate>
        <dx:ASPxHtmlEditor ID="ASPxHtmlEditor1" runat="server" Html='<%# Bind("Html") %>'>
            <Settings AllowDesignView="False" AllowHtmlView="False" />
        </dx:ASPxHtmlEditor>
    </ItemTemplate>
</asp:FormView>
<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/HtmlEditorSampleDB.mdb"
    SelectCommand="SELECT * FROM [Html]">
</asp:AccessDataSource>
```

## Files to Review

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))

## Documentation

* [Bind HTML Editor to Data](https://docs.devexpress.com/AspNet/7516/components/html-editor/concepts/get-and-set-html/data-binding)
* [Data-Binding Expressions Overview](https://learn.microsoft.com/en-us/previous-versions/aspnet/ms178366(v=vs.100))

## More Examples

* [HTML Editor for ASP.NET Web Forms - How to save/load the control's content to/from a database](https://github.com/DevExpress-Examples/how-to-save-load-content-of-the-aspxhtmleditor-within-a-database-e2225)
