<%@taglib prefix="sec"
          uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true" %>
<html>
<head>
  <title>Selico Enterprise</title>
  <%@include file="includes/styles.jsp" %>
</head>
<body>
<%-- header --%>
<%@include file="includes/header.jsp" %>

<div class="ch-container">
  <div class="row">

    <!-- left menu -->
    <%@include file="includes/leftMenu.jsp" %>

    <div id="content" class="col-lg-10 col-sm-10">
      <!-- page content -->

      <div class="row">
        <div class="box col-md-12">
          <div class="box-inner">
            <div class="box-header well" data-original-title="">
              <h2>User List</h2>

              <div class="box-icon">
                <a href="#" class="btn btn-minimize btn-round btn-default"><i
                  class="glyphicon glyphicon-chevron-up"></i></a>
              </div>
            </div>
            <div class="box-content">
              <table class="table table-bordered table-striped table-condensed">
                <thead>
                <tr>
                  <th>Username</th>
                  <th>User Type</th>
                  <th>Status</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${users}" var="user">
                  <tr>
                    <td><c:out value="${user.username}"/></td>
                    <td><c:out value="${user.userRole}"/></td>
                    <td><c:out value="${user.enabled}"/></td>
                  </tr>
                </c:forEach>
                </tbody>
              </table>
              <ul class="pagination pagination-centered">
                <li><a href="#">Prev</a></li>
                <li class="active">
                  <a href="#">1</a>
                </li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">Next</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <!--/span-->

      <!-- content ends -->
    </div>
    <!--/#content.col-md-0-->
  </div>
  <!--/fluid-row-->

  <%@include file="includes/footer.jsp" %>

</div>
<!--/.fluid-container-->
<%@include file="includes/scripts.jsp" %>
</body>
</html>