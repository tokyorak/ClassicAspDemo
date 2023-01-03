<%@ Language=VBScript %>
<%
    Dim username, password
    username = Request.Form("username")
    password = Request.Form("password")

    If username = "admin" And password = "password" Then
        Session("logged_in") = True
        Response.Redirect("welcome.asp")
    Else
        Response.Write("Invalid username or password.")
    End If
%>

<html>
    <head>
        <title>Login</title>
    </head>
    <body>
        <form method="post" action="login.asp">
        <label for="username">Username:</label><br>
        <input type="text" id="username" name="username"><br>
        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password"><br><br>
        <input type="submit" value="Submit">
        </form> 
    </body>
</html>
