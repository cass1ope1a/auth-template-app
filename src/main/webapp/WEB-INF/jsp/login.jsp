<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Log in with your account</title>
</head>

<body>
<sec:authorize access="isAuthenticated()">
  <% response.sendRedirect("/"); %>
</sec:authorize>
<div>
  <form method="POST" action="/login">
    <h2>Login</h2>
    <div>
      <input name="username" type="text" placeholder="Username" autofocus="true"/>
      <input name="password" type="password" placeholder="Password"/>
      <button type="submit">Sign in</button>
      <h4><a href="/registration">Sign up</a></h4>
    </div>
  </form>
</div>

</body>
</html>