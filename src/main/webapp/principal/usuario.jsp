<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<jsp:include page="head.jsp"></jsp:include>

<body>

  <jsp:include page="theme-loader.jsp"></jsp:include>

  <div id="pcoded" class="pcoded">
    <div class="pcoded-overlay-box"></div>
    <div class="pcoded-container navbar-wrapper">

      <jsp:include page="navbar.jsp"></jsp:include>

      <div class="pcoded-main-container">
        <div class="pcoded-wrapper">

          <jsp:include page="navbar-main-menu.jsp"></jsp:include>

          <div class="pcoded-content">
           
           <jsp:include page="page-header.jsp"></jsp:include>
           
            <div class="pcoded-inner-content">
              <!-- Main-body start -->
              <div class="main-body">
                <div class="page-wrapper">
                  <!-- Page-body start -->
                  <div class="page-body">
                    	<h3>Cadastro de usu�rio</h3>
                   	   	<form action="">
                   	   		<div class="form-group row">
                        		<label class="col-sm-2 col-form-label">Simple Input</label>
                          		<div class="col-sm-10">
                            		<input type="text" class="form-control">
                          		</div>
                      		</div>
                   		</form>
                  </div>
                  <!-- Page-body end -->
                </div>
                <div id="styleSelector"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <jsp:include page="javascript-file.jsp"></jsp:include>
</body>

</html>