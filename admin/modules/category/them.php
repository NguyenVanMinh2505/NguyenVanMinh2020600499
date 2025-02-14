<div class="row" style="margin-bottom: 10px;">
    <div class="col d-flex" style="justify-content: space-between; align-items: flex-end;">
        <h3>Thêm danh mục sản phẩm</h3>
        <a href="index.php?action=category&query=category_list" class="btn btn-outline-dark btn-fw">
            <i class="mdi mdi-reply"></i>
            Quay lại
        </a>
    </div>
</div>
<div class="row">
    <div class="col-lg-8 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="card-content">
                    <form method="POST" action="modules/category/xuly.php" enctype="multipart/form-data">
                        <div class="input-item form-group">
                            <label for="category_name">Tên danh mục</label>
                            <input type="text" name="category_name" class="form-control" required>
                        </div>
                        <div class="input-item form-group">
                            <label for="category_description">Mô tả</label>
                            <textarea name="category_description" class="form-control" required></textarea>
                        </div>
                        <div class="input-item form-group">
                            <label for="category_image">Hình ảnh</label>
                            <input type="file" id="category_image" name="category_image" class="form-control">
                        </div>
                        <button type="submit" name="category_add" class="btn btn-primary"><i class="ti-file btn-icon-prepend"></i> Thêm</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-4 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="card-content">
                    <div class="main-pane-top">
                        <div class="input-item form-group">
                            <label for="image" class="d-block">Hình ảnh</label>
                            <div class="image-box w-100">
                                <figure class="image-container p-relative">
                                    <img id="chosen-image">
                                    <figcaption id="file-name"></figcaption>
                                </figure>
                                <input type="file" class="d-none" id="category_image" name="category_image" accept="image/*">
                                <label class="label-for-image" for="category_image">
                                    <i class="fas fa-upload"></i> &nbsp; Chọn hình ảnh
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    let uploadButton = document.getElementById("category_image");
    let chosenImage = document.getElementById("chosen-image");
    let fileName = document.getElementById("file-name");

    uploadButton.onchange = () => {
        let reader = new FileReader();
        reader.readAsDataURL(uploadButton.files[0]);
        reader.onload = () => {
            chosenImage.setAttribute("src", reader.result);
        }
        fileName.textContent = uploadButton.files[0].name;
    }
</script>