<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>NEW VIEW | Administrator Backstage</title>

</head>

<body class="hold-transition sidebar-mini">

	<aside class="main-sidebar sidebar-dark-primary elevation-4">
		<!-- Brand Logo -->
		<a href="<%=request.getContextPath()%>/Backstage/Allpage-publisher/admin-index.jsp" class="brand-link"> <img
			src="<%=request.getContextPath()%>/Backstage/dist/img/AdminLTELogo.png" alt="AdminLTE Logo"
			class="brand-image img-circle elevation-3" style="opacity: .8">
			<span class="brand-text font-weight-light">NewView</span>
		</a>

		<!-- Sidebar -->
		<div class="sidebar">
			<!-- Sidebar user (optional) -->
			<div class="user-panel mt-3 pb-3 mb-3 d-flex">
				<div class="image">
					<img src="<%=request.getContextPath()%>/Backstage/dist/img/user4-128x128.jpg"
						class="img-circle elevation-2" alt="User Image">
				</div>
				<div class="info">
					<a href="#" class="d-block">NewView 後台管理員</a>
				</div>
			</div>

			<!-- Sidebar Menu -->
			<nav class="mt-2">
				<ul class="nav nav-pills nav-sidebar flex-column"
					data-widget="treeview" role="menu" data-accordion="false">
					<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
					<li class="nav-item">
					<a href="#" class="nav-link"> 
					<i class="nav-icon far fa-calendar-alt"></i>
							<p>
								活動管理 <i class="right fas fa-angle-left"></i>
							</p>
					</a>
						<ul class="nav nav-treeview">
							<li class="nav-item"><a
								href="<%=request.getContextPath()%>/Backstage/Allpage-administrator/activity/activity-category.jsp" class="nav-link"> <i
									class="far fa-circle nav-icon"></i>
									<p>分類管理</p>
							</a>
							</li>
							<li class="nav-item"><a
								href="<%=request.getContextPath()%>/Backstage/Allpage-administrator/activity/activity-list.jsp" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>活動列表</p>
							</a>
							</li>
							<li class="nav-item"><a
								href="<%=request.getContextPath()%>/Backstage/Allpage-administrator/activity/activity-list.jsp" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>活動審查</p>
							</a>
							</li>
							<li class="nav-item"><a
								href="<%=request.getContextPath()%>/Backstage/Allpage-administrator/activity/activity-list.jsp" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>評論管理</p>
							</a>
							</li>
						</ul>
					</li>
					<li class="nav-item"><a href="<%=request.getContextPath()%>/Backstage/Allpage-adminstrator/order/order-list.jsp"
						class="nav-link"> <i class="nav-icon fas fa-file"></i>
							<p>訂單管理</p>
					</a></li>
					<li class="nav-item"><a href="<%=request.getContextPath()%>/Backstage/Allpage-adminstrator/discount/discount-list.jsp"
						class="nav-link"> <i class="nav-icon fas fa-tree"></i>
							<p>優惠管理</p>
					</a></li>
					<li class="nav-item"><a href="#" class="nav-link"> <i
							class="nav-icon fas fa-edit"></i>
							<p>
								權限管理 <i class="fas fa-angle-left right"></i>
							</p>
					</a>
						<ul class="nav nav-treeview">
							<li class="nav-item"><a href="<%=request.getContextPath()%>/Backstage/Allpage-administrator/authority/user-member.jsp"
								class="nav-link"> <i class="far fa-circle nav-icon"></i>
									<p>廠商管理</p>
							</a></li>
							<li class="nav-item"><a
								href="<%=request.getContextPath()%>/Backstage/Allpage-admistrator/authority/user-publisher.jsp" class="nav-link"> <i
									class="far fa-circle nav-icon"></i>
									<p>會員管理</p>
							</a></li>
						</ul>
					</li>
					<li class="nav-item"><a href="#" class="nav-link"> <i
							class="nav-icon fas fa-edit"></i>
							<p>
								討論區 <i class="fas fa-angle-left right"></i>
							</p>
					</a>
						<ul class="nav nav-treeview">
							<li class="nav-item"><a href="<%=request.getContextPath()%>/Backstage/Allpage-administrator/forum/article-list.jsp"
								class="nav-link"> <i class="far fa-circle nav-icon"></i>
									<p>文章列表</p>
							</a></li>
							<li class="nav-item"><a
								href="<%=request.getContextPath()%>/Backstage/Allpage-admistrator/forum/article-review.jsp" class="nav-link"> <i
									class="far fa-circle nav-icon"></i>
									<p>檢舉審核</p>
							</a></li>
						</ul>
					</li>
					<li class="nav-item"><a href="<%=request.getContextPath()%>/Backstage/Allpage-admistrator/login/login_admin.jsp"
						class="nav-link"> <i class="nav-icon fas fa-file"></i>
							<p>登出</p>
					</a></li>
				</ul>
			</nav>
			<!-- /.sidebar-menu -->
		</div>
		<!-- /.sidebar -->
	</aside>

</body>
</html>