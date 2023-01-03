<%@ Language=VBScript %>
<%
    If Session("logged_in") = True Then
        Response.Write("Welcome!")
    Else
        Response.Write("You must be logged in to view this page.")
    End If
%>
