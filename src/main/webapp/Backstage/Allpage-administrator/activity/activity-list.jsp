<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>NEW VIEW | Backstage</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
    <!-- Select2 -->
    <link rel="stylesheet" href="../../plugins/select2/css/select2.min.css">
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
                <span class="brand-text font-weight-light">NewView</span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="../../dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
                    </div>
                    <div class="info">
                        <a href="#" class="d-block">後台管理員</a>
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
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    活動管理
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="/pages/tables/activity-list.html" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>活動列表</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="/pages/tables/activity-shelves.html" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>活動上/下架</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="/pages/tables/activity-category.html" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>分類管理</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="/pages/tables/activity-review.html" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>活動審查</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="/pages/tables/activity-comment.html" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>評論管理</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="/pages/tables/order-list.html" class="nav-link">
                                <i class="nav-icon fas fa-file"></i>
                                <p>訂單管理</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-tree"></i>
                                <p>
                                    優惠管理
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="/pages/tables/discount-list.html" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>優惠列表</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="/pages/tables/discount-add.html" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>新增優惠</p>
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
                                    <a href="/pages/tables/user-list.html" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>使用者列表</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="/pages/tables/user-add.html" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>新增使用者</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="/pages/tables/user-publisher.html" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>廠商管理</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="/pages/tables/user-member.html" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>會員資料</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-table"></i>
                                <p>
                                    討論區
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="/pages/tables/article-list.html" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>文章列表</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="/pages/tables/article-review.html" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>檢舉審核</p>
                                    </a>
                                </li>
                            </ul>
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
                            <h1>活動列表</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="../../index.html">後台首頁</a></li>
                                <li class="breadcrumb-item active">活動管理</li>
                            </ol>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>
            <section class="content">
                <div class="container-fluid">
                    <!-- <h2 class="text-center display-4">Enhanced Search</h2> -->
                    <form action="enhanced-results.html">
                        <div class="row">
                            <div class="col-md-10 offset-md-1">
                                <div class="row">
                                    <div class="col-6">
                                        <div class="form-group">
                                            <label>活動類別:</label>
                                            <select class="form-control" style="width: 100%;">
                                                <option>脫口秀</option>
                                                <option>演講</option>
                                                <option>音樂劇</option>
                                                <option>舞台劇</option>
                                                <option>演唱會</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <div class="form-group">
                                            <label>日期排序：</label>
                                            <select class="form-control" style="width: 100%;">
                                                <option>由新到舊</option>
                                                <option>由舊到新</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <div class="form-group">
                                            <label>審核狀態：</label>
                                            <select class="form-control" style="width: 100%;">
                                                <option>已通過</option>
                                                <option>審核中</option>
                                                <option>未通過</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>關鍵字搜尋:</label>
                                    <div class="input-group input-group-lg">
                                        <input type="search" class="form-control form-control-lg"
                                            placeholder="Type your keywords here" value="">
                                        <div class="input-group-append">
                                            <button type="submit" class="btn btn-lg btn-default">
                                                <i class="fa fa-search"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.form group -->
                            </div>
                        </div>
                    </form>
                </div>
            </section>
            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <!-- /.card-header -->
                                <div class="card-body table-responsive p-0">
                                    <table class="table table-hover text-nowrap">
                                        <thead>
                                            <tr>
                                                <th>活動編號</th>
                                                <th>預覽圖</th>
                                                <th>活動類別</th>
                                                <th>活動名稱</th>
                                                <th>審核狀態</th>
                                                <th style="text-align: center;">操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>183</td>
                                                <td>圖片</td>
                                                <td>音樂劇</td>
                                                <td><span class="tag tag-success">小王子經典配樂</span></td>
                                                <td>已通過</td>
                                                <td>
                                                    <button type="button"
                                                        class="btn btn-block btn-success btn-sm">詳情</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>183</td>
                                                <td>圖片</td>
                                                <td>音樂劇</td>
                                                <td><span class="tag tag-success">小王子經典配樂</span></td>
                                                <td>已通過</td>
                                                <td>
                                                    <button type="button"
                                                        class="btn btn-block btn-success btn-sm">詳情</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>183</td>
                                                <td>圖片</td>
                                                <td>音樂劇</td>
                                                <td><span class="tag tag-success">小王子經典配樂</span></td>
                                                <td>已通過</td>
                                                <td>
                                                    <button type="button"
                                                        class="btn btn-block btn-success btn-sm">詳情</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>183</td>
                                                <td>圖片</td>
                                                <td>音樂劇</td>
                                                <td><span class="tag tag-success">小王子經典配樂</span></td>
                                                <td>已通過</td>
                                                <td>
                                                    <button type="button"
                                                        class="btn btn-block btn-success btn-sm">詳情</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>183</td>
                                                <td>圖片</td>
                                                <td>音樂劇</td>
                                                <td><span class="tag tag-success">小王子經典配樂</span></td>
                                                <td>已通過</td>
                                                <td>
                                                    <button type="button"
                                                        class="btn btn-block btn-success btn-sm">詳情</button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card -->
                        </div>
                    </div>
                    <!-- /.row -->
                </div><!-- /.container-fluid -->
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
    <!-- AdminLTE App -->
    <script src="../../dist/js/adminlte.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../../dist/js/demo.js"></script>
</body>

</html>