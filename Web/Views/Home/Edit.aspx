<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<br.com.maginet.Entities.MsgStorage>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Edit</title>
</head>
<body>
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.MsgID) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.MsgID) %>
                <%: Html.ValidationMessageFor(model => model.MsgID) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.From) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.From) %>
                <%: Html.ValidationMessageFor(model => model.From) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Text) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Text) %>
                <%: Html.ValidationMessageFor(model => model.Text) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.MsgTimeStamp) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.MsgTimeStamp, String.Format("{0:g}", Model.MsgTimeStamp)) %>
                <%: Html.ValidationMessageFor(model => model.MsgTimeStamp) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.TimeStamp) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.TimeStamp, String.Format("{0:g}", Model.TimeStamp)) %>
                <%: Html.ValidationMessageFor(model => model.TimeStamp) %>
            </div>
            
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</body>
</html>

