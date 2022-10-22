<%@ taglib uri="/struts-tags" prefix="s" %>
<table border="2">
<tr>
<th>ID</th><th>Name</th><th>Address</th><th colspan="2">Action</th>
</tr>
<s:iterator value="list">
<tr>
<td><s:property value="id"/></td>
<td><s:property value="name"/></td>
<td><s:property value="address"/></td>
<td><a href="delete?id=<s:property value="id"/>">DELETE</a></td>
<td><a href="edit?id=<s:property value="id"/>">EDIT</a></td>
</tr>
</s:iterator>
</table>