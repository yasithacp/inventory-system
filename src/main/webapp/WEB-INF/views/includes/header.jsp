<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="navbar navbar-default" role="navigation">

  <div class="navbar-inner">
    <button type="button" class="navbar-toggle pull-left animated flip">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="index.html"> <img alt="Charisma Logo" src="${pageContext.request.contextPath}/resources/img/logo20.png"
                                                    class="hidden-xs"/>
      <span>Selico Enterprise</span></a>

    <!-- user dropdown starts -->
    <div class="btn-group pull-right">
      <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
        <i class="glyphicon glyphicon-user"></i><span class="hidden-sm hidden-xs"> ${pageContext.request.userPrincipal.name}</span>
        <span class="caret"></span>
      </button>
      <ul class="dropdown-menu">
        <li><a href="#">Profile</a></li>
        <li class="divider"></li>
        <li><a href="javascript:formSubmit()"> Logout</a></li>
      </ul>
    </div>
    <!-- user dropdown ends -->

    <!-- theme selector starts -->
    <%--<div class="btn-group pull-right theme-container animated tada">--%>
      <%--<button class="btn btn-default dropdown-toggle" data-toggle="dropdown">--%>
        <%--<i class="glyphicon glyphicon-tint"></i><span--%>
        <%--class="hidden-sm hidden-xs"> Change Theme / Skin</span>--%>
        <%--<span class="caret"></span>--%>
      <%--</button>--%>
      <%--<ul class="dropdown-menu" id="themes">--%>
        <%--<li><a data-value="classic" href="#"><i class="whitespace"></i> Classic</a></li>--%>
        <%--<li><a data-value="cerulean" href="#"><i class="whitespace"></i> Cerulean</a></li>--%>
        <%--<li><a data-value="cyborg" href="#"><i class="whitespace"></i> Cyborg</a></li>--%>
        <%--<li><a data-value="simplex" href="#"><i class="whitespace"></i> Simplex</a></li>--%>
        <%--<li><a data-value="darkly" href="#"><i class="whitespace"></i> Darkly</a></li>--%>
        <%--<li><a data-value="lumen" href="#"><i class="whitespace"></i> Lumen</a></li>--%>
        <%--<li><a data-value="slate" href="#"><i class="whitespace"></i> Slate</a></li>--%>
        <%--<li><a data-value="spacelab" href="#"><i class="whitespace"></i> Spacelab</a></li>--%>
        <%--<li><a data-value="united" href="#"><i class="whitespace"></i> United</a></li>--%>
      <%--</ul>--%>
    <%--</div>--%>
    <!-- theme selector ends -->

  </div>
</div>
<c:url value="/j_spring_security_logout" var="logoutUrl"/>
<form action="${logoutUrl}" method="post" id="logoutForm">
  <input type="hidden" name="${_csrf.parameterName}"
         value="${_csrf.token}"/>
</form>
<script>
  function formSubmit() {
    document.getElementById("logoutForm").submit();
  }
  var ctx = "${pageContext.request.contextPath}";
</script>
