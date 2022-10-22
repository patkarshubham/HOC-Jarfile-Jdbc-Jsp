
<%@page import="validation.Myform" contentType="text/html" pageEncoding="UTF-8"%>  
<jsp:useBean id="form" class="validation.Myform" scope="request">  
        <jsp:setProperty name="form" property="errorMessages" value='<%= errorMap %>'/>  
</jsp:useBean>  
  
<html>  
    <head>  
</head>  
<body bgcolor="green">  
    <%  
          
        if ("true".equals(request.getParameter("process"))) {  
    %>  
            <jsp:setProperty name="form" property="*" />  
    <%  
              
            if (form.process())  
  
            {  
  
HttpSession hs=request.getSession();  
hs.setAttribute("name",(String)request.getParameter("name"));  
hs.setAttribute("user",(String)request.getParameter("user"));  
hs.setAttribute("pass",(String)request.getParameter("pass1"));  
hs.setAttribute("address",(String)request.getParameter("address"));  
hs.setAttribute("pin",(String)request.getParameter("pin"));  
hs.setAttribute("contact",(String)request.getParameter("contact"));  
hs.setAttribute("email",(String)request.getParameter("email"));  
hs.setAttribute("city",(String)request.getParameter("city"));  
hs.setAttribute("code",(String)request.getParameter("code"));  
response.sendRedirect("sendmail");  
   }  
}  
  
  
    %>    
      
               <center>  
                  <form action='<%=request.getRequestURI()%>' method="POST">  
                      <table border="0">  
                              <tbody>  
                              <tr>  
                                  <td>Name</td>  
                                  <td><input type="text" name="name" value='<%=form.getName()%>'/></td>  
                                  <td><font color="red"><%=form.getErrorMessage("name") %></font></td>  
                              </tr>  
                              <tr>  
                                  <td>Username</td>  
                                  <td><input type="text" name="user" value='<%=form.getUser()%>'/></td>  
                                  <td><font color="red"><%=form.getErrorMessage("user") %></font></td>  
                              </tr>  
                              <tr>  
                                  <td>Password</td>  
                                  <td><input type="password" name="pass1" value='<%=form.getPass1()%>' /></td>  
                                  <td><font color="red"><%=form.getErrorMessage("pass1") %></font></td>  
                              </tr>  
                              <tr>  
                                  <td>Re Enter Password</td>  
                                  <td><input type="password" name="pass2" value='<%=form.getPass2()%>' /></td>  
                                  <td><font color="red"><%=form.getErrorMessage("pass2") %></font></td>  
                              </tr>  
                              <tr>  
                                  <td>Address</td>  
                                  <td><input type="text" name="address" value='<%=form.getAddress()%>' /></td>  
                                  <td><font color="red"><%=form.getErrorMessage("address") %></font></td>  
                              </tr>  
                              <tr>  
                                  <td>Pin Number</td>  
                                  <td><input type="text" name="pin" value='<%=form.getPin()%>' /></td>  
                                  <td><font color="red"><%=form.getErrorMessage("pin") %></font></td>  
                              </tr>  
                              <tr>  
                                  <td>Mobile Number</td>  
                                  <td><input type="text" name="contact" value='<%=form.getContact()%>' /></td>  
                                  <td><font color="red"><%=form.getErrorMessage("contact") %></font></td>  
                              </tr>  
                              <tr>  
                                  <td>Email ID</td>  
                                  <td><input type="text" name="email" value='<%=form.getEmail()%>'/></td>  
                                  <td><font color="red"><%=form.getErrorMessage("email") %></font></td>  
                              </tr>  
                              <tr>  
                                  <td>City</td>  
                                  <td><select name="area">  
                                          <option>Allahabad</option>  
                                          <option>Lucknow</option>  
                                          <option>Varanasi</option>  
                                          <option>Kanpur</option>  
                                          <option>Agra</option>  
                                      </select></td>  
                              </tr>  
                          </tbody>  
                      </table>  
  
                              <center><input type="submit" value="Register Me" /></center>  
                      <input type="HIDDEN" name="process" value="true"/>  
  
                  </form>  
              </center>  
</body>  
</html>  
<%!  
        // Define error messages  
        java.util.Map errorMap = new java.util.HashMap();  
        public void jspInit()  
                         {  
            errorMap.put(Myform.ERR_NAME_BLANK, "PLEASE ENTER YOUR NAME");  
            errorMap.put(Myform.ERR_USER_BLANK, "PLEASE ENTER YOUR USERNAME");  
            errorMap.put(Myform.ERR_USER_LENGTH, "LENGTH SHOULD BE 5 OR MORE");  
            errorMap.put(Myform.ERR_USER_EXISTS, "USERNAME ALREDY EXISTS");  
            errorMap.put(Myform.ERR_PASS1_BLANK, "PLEASE ENTER YOUR PASSWORD");  
            errorMap.put(Myform.ERR_PASS1_LENGTH, "LENGTH SHOULD BE 5 OR MORE");  
            errorMap.put(Myform.ERR_PASS2_BLANK, "PLEASE RE ENTER YOUR PASSWORD");  
            errorMap.put(Myform.ERR_PASS2_MATCH, "PASSWORD DOES NOT MATCH");  
            errorMap.put(Myform.ERR_ADDRESS_BLANK, "PLEASE ENTER YOUR ADDRESS");  
            errorMap.put(Myform.ERR_CONTACT_BLANK, "PLEASE ENTER YOUR MOBILE #");  
            errorMap.put(Myform.ERR_CONTACT_LENGTH, "LENGTH SHOULD BE 10");  
            errorMap.put(Myform.ERR_CONTACT_INVALID, "INVALID CONTACT #");  
            errorMap.put(Myform.ERR_PIN_BLANK, "PLEASE ENTER YOUR PIN CODE");  
            errorMap.put(Myform.ERR_PIN_LENGTH, "LENGTH SHOULD BE 6");  
            errorMap.put(Myform.ERR_PIN_INVALID, "INVALID PIN CODE");  
            errorMap.put(Myform.ERR_EMAIL_BLANK, "PLEASE ENTER YOUR EMAIL ID");  
            errorMap.put(Myform.ERR_EMAIL_INVALID, "INVALID EMAIL ID");  
                         }   
        %>  
The contents written in <%-------%> is JSP content and apart from these there are HTML content that we are all familiar with.

