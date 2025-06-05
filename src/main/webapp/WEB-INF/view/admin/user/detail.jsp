<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Hỏi Dân IT - Dự án laptopshop" />
                <meta name="author" content="Hỏi Dân IT" />
                <title>Create User -</title>
                <link href="/css/styles.css" rel="stylesheet" />
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4 my-4">
                                <h1 class="mt-4 mb-3">Manage Products</h1>
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb mb-4">
                                        <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Product</li>
                                    </ol>
                                </nav>

                                <div class="row justify-content-center">
                                    <div class="col-md-8 col-lg-6">
                                        <div class="d-flex justify-content-between align-items-center mb-3">
                                            <h3>User details for ID: <span class="text-primary">${user.id}</span></h3>
                                        </div>

                                        <div class="card shadow-sm">
                                            <div class="card-header bg-primary text-white">
                                                User Information
                                            </div>
                                            <ul class="list-group list-group-flush">
                                                <li class="list-group-item d-flex justify-content-between">
                                                    <strong>ID:</strong> <span>${user.id}</span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between">
                                                    <strong>Email:</strong> <span>${user.email}</span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between">
                                                    <strong>Full Name:</strong> <span>${user.fullName}</span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between">
                                                    <strong>Address:</strong> <span>${user.address}</span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>

                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/scripts.js"></script>
            </body>

            </html>