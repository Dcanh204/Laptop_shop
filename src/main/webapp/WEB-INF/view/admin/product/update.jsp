<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <title>Cập nhật sản phẩm</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

                <script>
                    $(document).ready(() => {
                        const avatarFile = $("#avatarFile");
                        avatarFile.change(function (e) {
                            const file = e.target.files[0];
                            if (file) {
                                const imgURL = URL.createObjectURL(file);
                                $("#avatarPreview").attr("src", imgURL).show();
                            }
                        });
                    });
                </script>

                <style>
                    #avatarPreview {
                        max-height: 200px;
                        border: 1px solid #ddd;
                        padding: 5px;
                        border-radius: 4px;
                        display: block;
                        margin-top: 10px;
                        object-fit: contain;
                        width: 100%;
                    }
                </style>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Cập nhật sản phẩm</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item active">Cập nhật sản phẩm</li>
                                </ol>

                                <div class="card shadow-sm mt-4 mb-5">
                                    <div class="card-body">
                                        <form:form method="post" action="/admin/product/update"
                                            modelAttribute="newProduct" enctype="multipart/form-data" class="row g-3">

                                            <!-- Trường ẩn để giữ ID -->
                                            <form:hidden path="id" />

                                            <!-- Tên sản phẩm -->
                                            <div class="col-md-6 form-floating">
                                                <form:input path="name" class="form-control" id="inputName"
                                                    placeholder="Tên sản phẩm" />
                                                <label for="inputName">Tên sản phẩm</label>
                                                <form:errors path="name" cssClass="text-danger" />
                                            </div>

                                            <!-- Giá bán -->
                                            <div class="col-md-6 form-floating">
                                                <form:input path="price" type="number" class="form-control"
                                                    id="inputPrice" placeholder="Giá bán" />
                                                <label for="inputPrice">Giá bán</label>
                                                <form:errors path="price" cssClass="text-danger" />
                                            </div>

                                            <!-- Số lượng -->
                                            <div class="col-md-6 form-floating">
                                                <form:input path="quantity" type="number" class="form-control"
                                                    id="inputQuantity" placeholder="Số lượng" />
                                                <label for="inputQuantity">Số lượng</label>
                                                <form:errors path="quantity" cssClass="text-danger" />
                                            </div>

                                            <!-- Hãng sản xuất -->
                                            <div class="col-md-6 form-floating">
                                                <form:input path="factory" class="form-control" id="inputFactory"
                                                    placeholder="Hãng sản xuất" />
                                                <label for="inputFactory">Hãng sản xuất</label>
                                            </div>

                                            <!-- Mục đích -->
                                            <div class="col-md-6 form-floating">
                                                <form:input path="target" class="form-control" id="inputTarget"
                                                    placeholder="Mục đích" />
                                                <label for="inputTarget">Mục đích</label>
                                            </div>

                                            <!-- RAM -->
                                            <div class="col-md-6 form-floating">
                                                <form:input path="ram" class="form-control" id="inputRam"
                                                    placeholder="RAM" />
                                                <label for="inputRam">RAM</label>
                                            </div>

                                            <!-- SSD -->
                                            <div class="col-md-6 form-floating">
                                                <form:input path="ssd" class="form-control" id="inputSsd"
                                                    placeholder="SSD" />
                                                <label for="inputSsd">SSD</label>
                                            </div>

                                            <!-- Màn hình -->
                                            <div class="col-md-6 form-floating">
                                                <form:input path="screen" class="form-control" id="inputScreen"
                                                    placeholder="Màn hình" />
                                                <label for="inputScreen">Màn hình</label>
                                            </div>

                                            <!-- CPU -->
                                            <div class="col-md-6 form-floating">
                                                <form:input path="cpu" class="form-control" id="inputCpu"
                                                    placeholder="CPU" />
                                                <label for="inputCpu">CPU</label>
                                            </div>

                                            <!-- Card màn hình -->
                                            <div class="col-md-6 form-floating">
                                                <form:input path="graphics_card" class="form-control"
                                                    id="inputGraphicsCard" placeholder="Card màn hình" />
                                                <label for="inputGraphicsCard">Card màn hình</label>
                                            </div>

                                            <!-- Pin -->
                                            <div class="col-md-6 form-floating">
                                                <form:input path="battery" class="form-control" id="inputBattery"
                                                    placeholder="Pin" />
                                                <label for="inputBattery">Pin</label>
                                            </div>

                                            <!-- Kích thước -->
                                            <div class="col-md-6 form-floating">
                                                <form:input path="weight" class="form-control" id="inputWeight"
                                                    placeholder="Kích thước" />
                                                <label for="inputWeight">Kích thước</label>
                                            </div>

                                            <!-- Hình ảnh -->
                                            <div class="col-md-6">
                                                <label for="avatarFile" class="form-label">Cập nhật ảnh sản phẩm</label>
                                                <input class="form-control" type="file" id="avatarFile"
                                                    accept=".png, .jpg, .jpeg" name="imageFile" />
                                                <c:if test="${not empty newProduct.image}">
                                                    <img id="avatarPreview" src="/images/${newProduct.image}"
                                                        alt="Ảnh sản phẩm hiện tại" />
                                                </c:if>
                                            </div>

                                            <!-- Nút submit -->
                                            <div class="col-12 text-end mt-4">
                                                <button type="submit" class="btn btn-success px-4">Cập nhật sản
                                                    phẩm</button>
                                            </div>
                                        </form:form>

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