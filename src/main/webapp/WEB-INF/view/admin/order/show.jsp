<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <meta name="description" content="Hỏi Dân IT - Dự án laptopshop" />
            <meta name="author" content="Hỏi Dân IT" />
            <title>Dashboard -</title>
            <link href="/css/styles.css" rel="stylesheet" />
            <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        </head>

        <body class="sb-nav-fixed">
            <jsp:include page="../layout/header.jsp" />
            <div id="layoutSidenav">
                <jsp:include page="../layout/sidebar.jsp" />
                <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid px-4">
                            <h1 class="mt-4">Manage Orders</h1>
                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                                <li class="breadcrumb-item active">Orders</li>
                            </ol>
                            <div class="card mb-4">
                                <div class="card-header">
                                    <i class="fas fa-table me-1"></i>
                                    Danh sách đơn hàng
                                </div>
                                <div class="card-body">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Người nhận</th>
                                                <th>Địa chỉ</th>
                                                <th>SĐT</th>
                                                <th>Tổng tiền</th>
                                                <th>Trạng thái</th>
                                                <th>Khách hàng</th>
                                                <th>Chi tiết</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Nguyễn Văn An</td>
                                                <td>123 Lê Lợi, Q1, TP.HCM</td>
                                                <td>0901234567</td>
                                                <td>25,000,000</td>
                                                <td>Đang xử lý</td>
                                                <td>vanta</td>
                                                <td><a href="#" class="btn btn-sm btn-info">Xem</a></td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Trần Thị Bắc</td>
                                                <td>45 Hoàng Hoa Thám, Hà Nội</td>
                                                <td>0912345678</td>
                                                <td>18,500,000</td>
                                                <td>Đã giao</td>
                                                <td>tranb</td>
                                                <td><a href="#" class="btn btn-sm btn-info">Xem</a></td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Lê Văn Cảnh</td>
                                                <td>789 Nguyễn Huệ, Đà Nẵng</td>
                                                <td>0987654321</td>
                                                <td>32,000,000</td>
                                                <td>Đang giao</td>
                                                <td>leec</td>
                                                <td><a href="#" class="btn btn-sm btn-info">Xem</a></td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>Ngô Thị Dung</td>
                                                <td>321 Trần Hưng Đạo, Q5, TP.HCM</td>
                                                <td>0977123456</td>
                                                <td>20,000,000</td>
                                                <td>Đang xử lý</td>
                                                <td>ngod</td>
                                                <td><a href="#" class="btn btn-sm btn-info">Xem</a></td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>Vũ Minh Đặng</td>
                                                <td>147 Cách Mạng Tháng 8, Q10, TP.HCM</td>
                                                <td>0933555777</td>
                                                <td>18,000,000</td>
                                                <td>Đã hoàn thành</td>
                                                <td>vume</td>
                                                <td><a href="#" class="btn btn-sm btn-info">Xem</a></td>
                                            </tr>
                                            <tr>
                                                <td>6</td>
                                                <td>Đặng Thị Thơm</td>
                                                <td>258 Lý Tự Trọng, Q1, TP.HCM</td>
                                                <td>0909888777</td>
                                                <td>22,000,000</td>
                                                <td>Đang xử lý</td>
                                                <td>dangf</td>
                                                <td><a href="#" class="btn btn-sm btn-info">Xem</a></td>
                                            </tr>
                                            <tr>
                                                <td>7</td>
                                                <td>Hoàng Văn Giang</td>
                                                <td>369 Nguyễn Thị Minh Khai, Q3, TP.HCM</td>
                                                <td>0944555333</td>
                                                <td>28,000,000</td>
                                                <td>Đã hoàn thành</td>
                                                <td>hoangg</td>
                                                <td><a href="#" class="btn btn-sm btn-info">Xem</a></td>
                                            </tr>
                                            <tr>
                                                <td>8</td>
                                                <td>Trịnh Thị Hòa</td>
                                                <td>741 Võ Văn Tần, Q5, TP.HCM</td>
                                                <td>0922333444</td>
                                                <td>20,000,000</td>
                                                <td>Đang xử lý</td>
                                                <td>trinhh</td>
                                                <td><a href="#" class="btn btn-sm btn-info">Xem</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
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