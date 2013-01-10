<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<br.com.maginet.Entities.MsgStorage>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Delete</title>
</head>
<body>
    <h3>Are you sure you want to delete this?</h3>
    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">MsgID</div>
        <div class="display-field"><%: Model.MsgID %></div>
        
        <div class="display-label">From</div>
        <div class="display-field"><%: Model.From %></div>
        
        <div class="display-label">Text</div>
        <div class="display-field"><%: Model.Text %></div>
        
        <div class="display-label">MsgTimeStamp</div>
        <div class="display-field"><%: String.Format("{0:g}", Model.MsgTimeStamp) %></div>
        
        <div class="display-label">TimeStamp</div>
        <div class="display-field"><%: String.Format("{0:g}", Model.TimeStamp) %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" value="Delete" /> |
		    <%: Html.ActionLink("Back to List", "Index") %>
        </p>
    <% } %>

</body>
</html>

