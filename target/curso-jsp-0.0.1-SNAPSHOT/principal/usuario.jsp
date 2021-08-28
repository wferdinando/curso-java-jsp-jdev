<%@ page
        language="java"
        contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1" %>
<jsp:include page="head.jsp"></jsp:include>

<body>

  <jsp:include page="theme-loader.jsp"></jsp:include>

  <div
          id="pcoded"
          class="pcoded">
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
                    <div class="row">
                      <div class="col-md-12">
                        <div class="card">
                          <div class="card-header">
                            <h5> Cadastro de Usuários </h5>
                            <!--<span>Add class of <code>.form-control</code> with <code>&lt;input&gt;</code> tag</span>-->
                          </div>
                          <div class="card-block">
                            <form action="<%= request.getContextPath() %>/ServletUsuarioController" method="post" class="form-material"
                                  autocomplete="off">
                              <div class="row mt-3">
                                <div class="col-4 col-sm-2">
                                  <div class="form-group form-default">
                                    <input type="text" name="id" id="id" class="form-control" required="" readonly>
                                    <span class="form-bar"></span>
                                    <label class="float-label">Código</label>
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="col-sm-6 ">
                                  <div class="form-group form-default">
                                    <input type="text" name="nome" id="nome" class="form-control" required="">
                                    <span class="form-bar"></span>
                                    <label class="float-label">Nome</label>
                                  </div>
                                </div>
                                <div class="col-sm-6">
                                  <div class="form-group form-default">
                                    <input type="email" name="email" id="email" class="form-control" required="required">
                                    <span class="form-bar"></span>
                                    <label class="float-label">E-mail</label>
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="col-sm-6">
                                  <div class="form-group form-default">
                                    <input type="password" name="login" id="login" class="form-control" required="required">
                                    <span class="form-bar"></span>
                                    <label class="float-label">Login</label>
                                  </div>
                                </div>
                                <div class="col-sm-6">
                                  <div class="form-group form-default">
                                    <input type="password" name="senha" id="senha" class="form-control" required="required">
                                    <span class="form-bar"></span>
                                    <label class="float-label">Senha</label>
                                  </div>
                                </div>
                              </div>
                              <button class="btn btn-mat waves-effect waves-light btn-primary "><i class="ti-save"></i> Salvar</button>
                              <button class="btn btn-mat waves-effect waves-light btn-inverse "><i class="ti-angle-double-left"></i> Voltar</button>
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>
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