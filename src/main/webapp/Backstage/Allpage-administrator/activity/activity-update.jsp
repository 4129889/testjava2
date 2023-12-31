<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.tha103.newview.actcategory.model.*"%>

<% //見com.tha103.newview.actcategory.controller.ActCategoryServlet.java第54行存入req的actCategory物件 (此為從資料庫取出的actCategory, 也可以是輸入格式有錯誤時的actCategory物件)
	ActCategory actCategory = (ActCategory) request.getAttribute("actCategory");
%>

<!DOCTYPE html>
<html lang="UTF-8">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>NEW VIEW | Administrator Backstage | Activity Category Add</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
    <!-- daterange picker -->
    <link rel="stylesheet" href="../../plugins/daterangepicker/daterangepicker.css">
    <!-- iCheck for checkboxes and radio inputs -->
    <link rel="stylesheet" href="../../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- Bootstrap Color Picker -->
    <link rel="stylesheet" href="../../plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
    <!-- Tempusdominus Bootstrap 4 -->
    <link rel="stylesheet" href="../../plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- Select2 -->
    <link rel="stylesheet" href="../../plugins/select2/css/select2.min.css">
    <!-- Bootstrap4 Duallistbox -->
    <link rel="stylesheet" href="../../plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
    <!-- BS Stepper -->
    <link rel="stylesheet" href="../../plugins/bs-stepper/css/bs-stepper.min.css">
    <!-- dropzonejs -->
    <link rel="stylesheet" href="../../plugins/dropzone/min/dropzone.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
</head>

<body class="hold-transition sidebar-mini">
    <div class="wrapper">
        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                </li>
            </ul>

            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">

                <!-- Messages Dropdown Menu -->
                <li class="nav-item dropdown">
                    <a class="nav-link" data-toggle="dropdown" href="#">
                        <i class="far fa-comments"></i>
                        <span class="badge badge-danger navbar-badge">3</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                        <a href="#" class="dropdown-item">
                            <!-- Message Start -->
                            <div class="media">
                                <img src="../../dist/img/user1-128x128.jpg" alt="User Avatar"
                                    class="img-size-50 mr-3 img-circle">
                                <div class="media-body">
                                    <h3 class="dropdown-item-title">
                                        Brad Diesel
                                        <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                                    </h3>
                                    <p class="text-sm">Call me whenever you can...</p>
                                    <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                                </div>
                            </div>
                            <!-- Message End -->
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <!-- Message Start -->
                            <div class="media">
                                <img src="../../dist/img/user8-128x128.jpg" alt="User Avatar"
                                    class="img-size-50 img-circle mr-3">
                                <div class="media-body">
                                    <h3 class="dropdown-item-title">
                                        John Pierce
                                        <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                                    </h3>
                                    <p class="text-sm">I got your message bro</p>
                                    <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                                </div>
                            </div>
                            <!-- Message End -->
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <!-- Message Start -->
                            <div class="media">
                                <img src="../../dist/img/user3-128x128.jpg" alt="User Avatar"
                                    class="img-size-50 img-circle mr-3">
                                <div class="media-body">
                                    <h3 class="dropdown-item-title">
                                        Nora Silvester
                                        <span class="float-right text-sm text-warning"><i
                                                class="fas fa-star"></i></span>
                                    </h3>
                                    <p class="text-sm">The subject goes here</p>
                                    <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                                </div>
                            </div>
                            <!-- Message End -->
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
                    </div>
                </li>
                <!-- Notifications Dropdown Menu -->
                <li class="nav-item dropdown">
                    <a class="nav-link" data-toggle="dropdown" href="#">
                        <i class="far fa-bell"></i>
                        <span class="badge badge-warning navbar-badge">15</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                        <span class="dropdown-item dropdown-header">15 Notifications</span>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <i class="fas fa-envelope mr-2"></i> 4 new messages
                            <span class="float-right text-muted text-sm">3 mins</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <i class="fas fa-users mr-2"></i> 8 friend requests
                            <span class="float-right text-muted text-sm">12 hours</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <i class="fas fa-file mr-2"></i> 3 new reports
                            <span class="float-right text-muted text-sm">2 days</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                        <i class="fas fa-expand-arrows-alt"></i>
                    </a>
                </li>
                <!-- <li class="nav-item">
                    <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
                        <i class="fas fa-th-large"></i>
                    </a>
                </li> -->
            </ul>
        </nav>
        <!-- /.navbar -->
        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="../../index.html" class="brand-link">
                <img src="../../dist/img/AdminLTELogo.png" alt="AdminLTE Logo"
                    class="brand-image img-circle elevation-3" style="opacity: .8">
                <span class="brand-text font-weight-light">NewView Backstage</span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="../../dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
                    </div>
                    <div class="info">
                        <a href="#" class="d-block">NewView 後台管理員</a>
                    </div>
                </div>



		                <!-- Sidebar Menu -->
		                <nav class="mt-2">
		                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
		                        data-accordion="false">
		                        <!-- Add icons to the links using the .nav-icon class
		                       with font-awesome or any other icon font library -->
		                       
		                       
		           <li class="nav-item">
		              <a href="#" class="nav-link">
		                <i class="nav-icon far fa-calendar-alt"></i>
		                <p>
		                  活動管理
		                  <i class="right fas fa-angle-left"></i>
		                </p>
		              </a>
		              <ul class="nav nav-treeview">
		                <li class="nav-item">
		                  <a href="activity/activity-list.jsp" class="nav-link">
		                    <i class="far fa-circle nav-icon"></i>
		                    <p>分類管理</p>
		                  </a>
		                </li>
		                
		                
			            <li class="nav-item">
			              <a href="activity/activity-shelves.jsp" class="nav-link">
			                <i class="far fa-circle nav-icon"></i>
			                <p>活動列表</p>
			              </a>
			            </li>
			            
			            <li class="nav-item">
			              <a href="activity/activity-shelves.jsp" class="nav-link">
			                <i class="far fa-circle nav-icon"></i>
			                <p>活動審查</p>
			              </a>
			            </li>
			            
			            <li class="nav-item">
			              <a href="activity/activity-shelves.jsp" class="nav-link">
			                <i class="far fa-circle nav-icon"></i>
			                <p>評論管理</p>
			              </a>
			            </li>
			            
		                
		              </ul>
		            </li>
		            <li class="nav-item">
		              <a href="order/order-list.jsp" class="nav-link">
		                <i class="nav-icon fas fa-file"></i>
		                <p>訂單管理</p>
		              </a>
		            </li>
		            <li class="nav-item">
		              <a href="order/order-list.jsp" class="nav-link">
		                <i class="nav-icon fas fa-tree"></i>
		                <p>優惠管理</p>
		              </a>
		            </li>
		            <li class="nav-item">
		              <a href="#" class="nav-link">
		                <i class="nav-icon fas fa-tree"></i>
		                <p>
		                  使用者管理
		                  <i class="fas fa-angle-left right"></i>
		                </p>
		              </a>
		              <ul class="nav nav-treeview">
		                <li class="nav-item">
		                  <a href="discount/discount-list.jsp" class="nav-link">
		                    <i class="far fa-circle nav-icon"></i>
		                    <p>廠商管理</p>
		                  </a>
		                </li>
		                <li class="nav-item">
		                  <a href="discount/discount-add.jsp" class="nav-link">
		                    <i class="far fa-circle nav-icon"></i>
		                    <p>會員資料</p>
		                  </a>
		                </li>
		              </ul>
		            </li>
		            <li class="nav-item">
		              <a href="#" class="nav-link">
		                <i class="nav-icon fas fa-edit"></i>
		                <p>
		                  權限管理
		                  <i class="fas fa-angle-left right"></i>
		                </p>
		              </a>
		              <ul class="nav nav-treeview">
		                <li class="nav-item">
		                  <a href="<%=request.getContextPath()%>/user/user-list.jsp" class="nav-link">
		                    <i class="far fa-circle nav-icon"></i>
		                    <p>廠商管理</p>
		                  </a>
		                </li>
		                <li class="nav-item">
		                  <a href="user/user-add.jsp" class="nav-link">
		                    <i class="far fa-circle nav-icon"></i>
		                    <p>會員管理</p>
		                  </a>
		                </li>
		               </ul>
		            </li>   
		                
		                
		            <li class="nav-item">
		              <a href="#" class="nav-link">
		                <i class="nav-icon fas fa-edit"></i>
		                <p>
		                  討論區
		                  <i class="fas fa-angle-left right"></i>
		                </p>
		              </a>
		              <ul class="nav nav-treeview">
		                <li class="nav-item">
		                  <a href="<%=request.getContextPath()%>/user/user-list.jsp" class="nav-link">
		                    <i class="far fa-circle nav-icon"></i>
		                    <p>文章列表</p>
		                  </a>
		                </li>
		                <li class="nav-item">
		                  <a href="user/user-add.jsp" class="nav-link">
		                    <i class="far fa-circle nav-icon"></i>
		                    <p>檢舉審核</p>
		                  </a>
		                </li>
		              </ul>
		            </li>
		            <li class="nav-item">
		              <a href="login/login.html" class="nav-link">
		                <i class="nav-icon fas fa-file"></i>
		                <p>登出</p>
		              </a>
		            </li>
		          </ul>                       

                </nav>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1>分類修改</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="../admin-index.jsp">後台首頁</a></li>
                                <li class="breadcrumb-item active">分類管理</li>
                            </ol>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>

            <!-- Main content -->
            <section class="content">
                <!-- Default box -->
                <div class="container-fluid">
                    <div class="card" class="container-fluid">
                        <form action="#" style="padding: 30px 0px;">
                            <div class="col-md-10 offset-md-1">

								<%-- 錯誤表列 --%>
								<c:if test="${not empty errorMsgs}">
									<font style="color: red">請修正以下錯誤:</font>
									<ul>
										<c:forEach var="message" items="${errorMsgs}">
											<li style="color: red">${message}</li>
										</c:forEach>
									</ul>
								</c:if>


								<div class="form-group">
                                    <label>排序：</label>
                                    <div><<%=actCategory.getActCategoryID()%></div>
                                </div>
                                <div class="form-group">
                                    <label for="inputDisContent">分類名稱：</label>
                                    <input type="text" id="inputCategoryContent" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <input type="submit" class="btn btn-primary" value="送出">
                                    <input type="submit" class="btn btn-danger" value="清空">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </section>
            <!-- /.content -->

        </div>
        <!-- /.content-wrapper -->
        <footer class="main-footer">
            <div class="float-right d-none d-sm-block">
                <b>Version</b> 1.0.0
            </div>
            <strong>Copyright &copy; 2023~ <a href="https://newview.com">NewView</a>.</strong> All rights
            reserved.
        </footer>

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

    <!-- jQuery -->
    <script src="../../plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Select2.full -->
    <script src="../../plugins/select2/js/select2.full.min.js"></script>
    <!-- Bootstrap4 Duallistbox -->
    <script src="../../plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
    <!-- InputMask -->
    <script src="../../plugins/moment/moment.min.js"></script>
    <script src="../../plugins/inputmask/jquery.inputmask.min.js"></script>
    <!-- date-range-picker -->
    <script src="../../plugins/daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap color picker -->
    <script src="../../plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
    <!-- Tempusdominus Bootstrap 4 -->
    <script src="../../plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
    <!-- Bootstrap Switch -->
    <script src="../../plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
    <!-- BS-Stepper -->
    <script src="../../plugins/bs-stepper/js/bs-stepper.min.js"></script>
    <!-- dropzonejs -->
    <script src="../../plugins/dropzone/min/dropzone.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../../dist/js/adminlte.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../../dist/js/demo.js"></script>
    <!-- Page specific script -->
    <script>
        $(function () {
            $('.select2').select2()
        });
    </script>
    <script>
        $(function () {
            //Initialize Select2 Elements
            $('.select2').select2()

            //Initialize Select2 Elements
            $('.select2bs4').select2({
                theme: 'bootstrap4'
            })








        // Setup the buttons for all transfers
        // The "add files" button doesn't need to be setup because the config
        // `clickable` has already been specified.
        document.querySelector("#actions .start").onclick = function () {
            myDropzone.enqueueFiles(myDropzone.getFilesWithStatus(Dropzone.ADDED))
        }
        document.querySelector("#actions .cancel").onclick = function () {
            myDropzone.removeAllFiles(true)
        }
        // DropzoneJS Demo Code End
    </script>
</body>

</html>    

