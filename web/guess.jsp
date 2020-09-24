<%@ page import="domain.GuessGame" %>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
         pageEncoding="US-ASCII" %>

<%!GuessGame game = new GuessGame(); %>

<!DOCTYPE html>
<html>
<head>
    <title>Guess</title>
    <link rel="stylesheet" href="css/sample.css" type="text/css">
</head>
<body>
<h1>Thinking a number</h1>
<%
    String guessFromParameter = request.getParameter("guess");
    int guessedNumber = Integer.parseInt(guessFromParameter);
%>
<p>You guessed <%=guessedNumber%>...</p>
<%
    String resultMessage = game.guess(guessedNumber);
%>
<h2><%=resultMessage%>
</h2>
<img src="images/guess.jpg">
</body>
</html>