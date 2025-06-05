<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
            <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8" />
                    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                    <meta name="description" content="Hỏi Dân IT - Dự án laptopshop" />
                    <meta name="author" content="Hỏi Dân IT" />
                    <title>Product Detail</title>
                    <link href="/css/styles.css" rel="stylesheet" />
                    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
                        crossorigin="anonymous"></script>
                </head>

                <body class="sb-nav-fixed">
                    <jsp:include page="../layout/header.jsp" />
                    <div id="layoutSidenav">
                        <jsp:include page="../layout/sidebar.jsp" />
                        <div id="layoutSidenav_content">
                            <main>
                                <div class="container-fluid px-4 mt-4">
                                    <h1 class="mb-4">Product Detail</h1>
                                    <ol class="breadcrumb mb-4">
                                        <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                                        <li class="breadcrumb-item"><a href="/admin/product">Product</a></li>
                                        <li class="breadcrumb-item active">${user.name}</li>
                                    </ol>

                                    <div class="row justify-content-center">
                                        <div class="col-md-8">
                                            <div class="card shadow-lg">
                                                <div class="row g-0">
                                                    <div class="col-md-5">
                                                        <img src="/images/product/${user.image}"
                                                            class="img-fluid rounded-start" alt="${user.name}"
                                                            style="object-fit: cover; height: 100%;">
                                                    </div>
                                                    <div class="col-md-7">
                                                        <div class="card-body">
                                                            <h4 class="card-title mb-3">${user.name}</h4>
                                                            <ul class="list-group list-group-flush mb-3">
                                                                <li class="list-group-item"><strong>ID:</strong>
                                                                    ${user.id}</li>
                                                                <li class="list-group-item"><strong>Price:</strong>
                                                                    <fmt:formatNumber value="${user.price}"
                                                                        type="number" groupingUsed="true" /> ₫
                                                                </li>
                                                                <li class="list-group-item"><strong>Factory:</strong>
                                                                    ${user.factory}</li>
                                                                <li class="list-group-item"><strong>RAM:</strong>
                                                                    ${user.ram}</li>
                                                                <li class="list-group-item"><strong>SSD:</strong>
                                                                    ${user.ssd}</li>
                                                                <li class="list-group-item"><strong>Screen:</strong>
                                                                    ${user.screen}</li>
                                                                <li class="list-group-item"><strong>CPU:</strong>
                                                                    ${user.cpu}</li>

                                                                <li class="list-group-item"><strong>Graphics
                                                                        Card:</strong>
                                                                    ${user.graphics_card}</li>
                                                                <li class="list-group-item"><strong>Battery:</strong>
                                                                    ${user.battery}</li>
                                                                <li class="list-group-item"><strong>Weight:</strong>
                                                                    ${user.weight}</li>
                                                            </ul>
                                                            <a href="/admin/product/update/${user.id}"
                                                                class="btn btn-warning me-2"><i class="fas fa-edit"></i>
                                                                Update</a>
                                                            <a href="/admin/product/delete/${user.id}"
                                                                class="btn btn-danger"><i class="fas fa-trash"></i>
                                                                Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <a href="/admin/product" class="btn btn-secondary mt-4"><i
                                                    class="fas fa-arrow-left"></i> Back to Product List</a>
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