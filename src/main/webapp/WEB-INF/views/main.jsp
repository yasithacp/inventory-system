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
              <h2>Combined All</h2>

              <div class="box-icon">
                <a href="#" class="btn btn-setting btn-round btn-default"><i
                  class="glyphicon glyphicon-cog"></i></a>
                <a href="#" class="btn btn-minimize btn-round btn-default"><i
                  class="glyphicon glyphicon-chevron-up"></i></a>
                <a href="#" class="btn btn-close btn-round btn-default"><i
                  class="glyphicon glyphicon-remove"></i></a>
              </div>
            </div>
            <div class="box-content">
              <table class="table table-bordered table-striped table-condensed">
                <thead>
                <tr>
                  <th>Username</th>
                  <th>Date registered</th>
                  <th>Role</th>
                  <th>Status</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                  <td>Muhammad Usman</td>
                  <td class="center">2012/01/01</td>
                  <td class="center">Member</td>
                  <td class="center">
                    <span class="label-success label label-default">Active</span>
                  </td>
                </tr>
                <tr>
                  <td>White Horse</td>
                  <td class="center">2012/02/01</td>
                  <td class="center">Staff</td>
                  <td class="center">
                    <span class="label-default label label-danger">Banned</span>
                  </td>
                </tr>
                <tr>
                  <td>Sheikh Heera</td>
                  <td class="center">2012/02/01</td>
                  <td class="center">Admin</td>
                  <td class="center">
                    <span class="label-default label">Inactive</span>
                  </td>
                </tr>
                <tr>
                  <td>Saruar</td>
                  <td class="center">2012/03/01</td>
                  <td class="center">Member</td>
                  <td class="center">
                    <span class="label-warning label label-default">Pending</span>
                  </td>
                </tr>
                <tr>
                  <td>Sana Amrin</td>
                  <td class="center">2012/01/21</td>
                  <td class="center">Staff</td>
                  <td class="center">
                    <span class="label-success label label-default">Active</span>
                  </td>
                </tr>
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