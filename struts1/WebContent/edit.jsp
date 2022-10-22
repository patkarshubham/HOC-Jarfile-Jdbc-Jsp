<%@ taglib uri="/struts-tags" prefix="s" %>
<s:iterator value="list">
<s:form action="update">

<s:textfield name="id" label="ID"></s:textfield>
<s:textfield name="name" label="NAME"></s:textfield>
<s:textfield name="address" label="Address"></s:textfield>
<s:submit value="update"></s:submit>

</s:form>
</s:iterator>
