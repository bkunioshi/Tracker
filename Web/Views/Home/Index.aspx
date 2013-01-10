<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<br.com.maginet.Entities.MsgStorage>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Index</title>
</head>
<body>
    <table>
        <tr>
            <th></th>
            <th>
                MsgID
            </th>
            <th>
                From
            </th>
            <th>
                Text
            </th>
            <th>
                MsgTimeStamp
            </th>
            <th>
                TimeStamp
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id = item.MsgID })%> |
                <%: Html.ActionLink("Details", "Details", new { id = item.MsgID })%> |
                <%: Html.ActionLink("Delete", "Delete", new {id=item.MsgID})%>
            </td>
            <td>
                <%: item.MsgID %>
            </td>
            <td>
                <%: item.From %>
            </td>
            <td>
                <%: item.Text %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.MsgTimeStamp) %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.TimeStamp) %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</body>
</html>

