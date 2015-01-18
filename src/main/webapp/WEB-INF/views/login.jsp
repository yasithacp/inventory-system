<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true" %>
<html>
<head>
  <title>Login Page</title>
  <%@include file="includes/styles.jsp" %>
</head>
<body>
<div class="ch-container">
  <div class="row">

    <div class="row">
      <div class="col-md-12 center login-header">
        <h1>Welcome to Selico Enterprise</h1>
      </div>
      <%--/span--%>
    </div>
    <%--/row--%>

    <div class="row">
      <div class="well col-md-5 center login-box">
        <c:if test="${not empty error}">
          <div class="alert alert-danger">${error}</div>
        </c:if>
        <c:if test="${not empty msg}">
          <div class="alert alert-info">${msg}</div>
        </c:if>
        <c:if test="${empty msg && empty error}">
          <div class="alert alert-info">
            Please login with your Username and Password.
          </div>
        </c:if>
        <form name='loginForm' action="<c:url value='/auth/login_check?targetUrl=${targetUrl}' />"
              method='POST' class="form-horizontal">
          <fieldset>
            <div class="input-group input-group-lg">
              <span class="input-group-addon"><i class="glyphicon glyphicon-user red"></i></span>
              <input type="text" name='username' class="form-control" placeholder="Username">
            </div>
            <div class="clearfix"></div>
            <br>

            <div class="input-group input-group-lg">
              <span class="input-group-addon"><i class="glyphicon glyphicon-lock red"></i></span>
              <input type="password" name='password' class="form-control" placeholder="Password">
            </div>
            <div class="clearfix"></div>

            <div class="input-prepend">
              <c:if test="${empty loginUpdate}">
                <label class="remember" for="remember"><input type="checkbox" name="remember-me" id="remember"> Remember
                  me</label>
              </c:if>
            </div>
            <div class="clearfix"></div>

            <p class="center col-md-5">
              <button type="submit" class="btn btn-primary">Login</button>
            </p>
          </fieldset>
          <input type="hidden" name="${_csrf.parameterName}"
                 value="${_csrf.token}"/>
        </form>
      </div>
      <%--/span--%>
    </div>
    <%--/row--%>
  </div>
  <%--/fluid-row--%>

</div>
<%--/.fluid-container--%>
<%@include file="includes/scripts.jsp" %>
</body>
</html>