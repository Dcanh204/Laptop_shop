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
                <title>Xóa sản phẩm</title>

                <!-- Bootstrap CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>

                <style>
                    /* Custom styles for the delete confirmation */
                    .delete-card {
                        max-width: 480px;
                        margin: 40px auto;
                        box-shadow: 0 8px 24px rgba(0, 0, 0, 0.12);
                        border-radius: 12px;
                        padding: 30px;
                        background: #fff;
                        transition: box-shadow 0.3s ease;
                    }

                    .delete-card:hover {
                        box-shadow: 0 12px 36px rgba(0, 0, 0, 0.18);
                    }

                    .delete-icon {
                        font-size: 60px;
                        color: #dc3545;
                        margin-bottom: 15px;
                    }

                    .btn-danger {
                        min-width: 140px;
                    }

                    .btn-secondary {
                        min-width: 140px;
                    }
                </style>
            </head>

            <body class="sb-nav-fixed bg-light">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Quản lý sản phẩm</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item active">Sản phẩm</li>
                                </ol>

                                <div class="delete-card text-center">
                                    <i class="fas fa-exclamation-triangle delete-icon"></i>
                                    <h3 class="mb-4">Xóa sản phẩm</h3>
                                    <p class="fs-5 text-danger mb-4">
                                        Bạn có chắc chắn muốn xóa sản phẩm
                                        <strong>
                                            <c:out value="${productToDelete.name}" />
                                        </strong>?
                                    </p>

                                    <form:form method="post" action="/admin/product/delete"
                                        modelAttribute="productToDelete" class="d-flex justify-content-center gap-3">
                                        <form:hidden path="id" />
                                        <button type="submit" class="btn btn-danger shadow-sm">
                                            <i class="fas fa-trash-alt me-2"></i> Xác nhận xóa
                                        </button>
                                        <a href="/admin/product" class="btn btn-secondary shadow-sm">
                                            <i class="fas fa-times me-2"></i> Hủy
                                        </a>
                                    </form:form>
                                </div>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>

                <!-- Bootstrap JS Bundle -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/scripts.js"></script>
            </body>

            </html>