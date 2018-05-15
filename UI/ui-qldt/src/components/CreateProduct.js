import React from "react";
import fetch from 'isomorphic-fetch'

class CreateProduct extends React.Component {

    constructor() {
        super();
        this.handleSubmit = this.handleSubmit.bind(this);
      }
      
      handleSubmit(event) {
        event.preventDefault();
		const data = new FormData(event.target);
        fetch('http://localhost:3001/api/products', {
            method: 'POST',
            headers: {
                'Accept': 'application/json',
                'Authorization': 'whatever-you-want',
                'Content-Type': 'application/json'
                },
            body: JSON.stringify({
                tenMay: data.get('tenMay'),
                NSX: data.get('HSX'),
				ManHinh: data.get('MH'),
				HDH: data.get('HDH'),
				CPU: data.get('CPU'),
                RAM: data.get('RAM'),
				CAMERA: data.get('CAMERA'),
				PIN: data.get('PIN'),
				Gia: data.get('txtPrice'),
				ghiChu: 'Null',
				slMatDinh: data.get('slSP'),
				slHienTai: data.get('slSP'),
				slXem: 0,
				ngSX: data.get('NgaySX'),
				Loai: data.get('loaiSP'),
				Comment: "Null",
				MoTa: data.get('txtFullDes'),
				linkAnh : data.get('linkanh'),
              })
        });
        alert('Thêm thành công');
    
      }
    
      render() {
        return (
          <form onSubmit={this.handleSubmit}>
			
		  	<div class="row">
			  	<div class="col-sm-1">Tên Sản phẩm</div>
				<div class="col-sm-3">
					<input required maxlength="50" type="text" class="form-control" id="tenMay" name="tenMay" placeholder="iPhone X"/>
				</div>

				<div class="col-sm-1"> Loại sản phẩm</div>
				<div class="col-sm-3">
					<select id="loaiSP" name="loaiSP" class="form-control">
						<option value="1">Máy tính bảng</option>
						<option value="2">Điện thoại</option>
					</select>
				</div>

				<div class="col-sm-1">Hãng sản xuất</div>
				<div class="col-sm-3">
					<select id="HSX" name="HSX" class="form-control">								
						<option value="Apple">Apple</option>
						<option value="Samsung">Samsung</option>
						<option value="Nokia">Nokia</option>
						<option value="Xiaomi">Xiaomi</option>
					</select>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-1">Màn hình</div>
				<div class="col-sm-3">
					<input required maxlength="30" type="text" class="form-control" id="MH" name="MH" placeholder="7.9-Full HD"/>
				</div>
				<div class="col-sm-1">Hệ điều hành</div>
				<div class="col-sm-3">
					<input required maxlength="30" type="text" class="form-control" id="HDH" name="HDH" placeholder="Android 8.0"/>
				</div>

				<div class="col-sm-1">CPU</div>
				<div class="col-sm-3">
					<input required maxlength="30" type="text" class="form-control" id="CPU" name="CPU" placeholder="Chip Intel"/>
				</div>
				
			</div>

			<div class="row">
				<div class="col-sm-1">RAM</div>
				<div class="col-sm-3">
					<input required maxlength="30" type="text" class="form-control" id="RAM" name="RAM" placeholder="8 GB ,ROM 128 GB"/>
				</div>

				<div class="col-sm-1">CAMERA</div>
				<div class="col-sm-3">
					<input required maxlength="30" type="text" class="form-control" id="CAMERA" name="CAMERA" placeholder="Trước 12 MP,Selfie 8MP "/>
				</div>

				<div class="col-sm-1">PIN</div>
				<div class="col-sm-3">
					<input required maxlength="10" type="number" min="1" class="form-control" id="PIN" name="PIN" placeholder="3000 mAh"/>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-1">Giá</div>
				<div class="col-sm-3">
					<input required maxlength="10" min="0" type="number" class="form-control" id="txtPrice" name="txtPrice" placeholder="30,000,000"/>
				</div>

				<div class="col-sm-1">Số Lượng</div>
				<div class="col-sm-3">
					<input required maxlength="4" max="1000" min="1" type="number" class="form-control" id="slSP" name="slSP" min="1" max="200" placeholder="30"/>
				</div>

				<div  class="col-sm-1">Ngày sản xuất</div>
				<div class="col-sm-3">
					<input required maxlength="30" type="date" class="form-control" id="NgaySX" name="NgaySX" />
				</div>
			</div>

			<div class="row">
				<div class="col-sm-2">Mô tả chi tiết</div>
				<div class="col-sm-10">
					<textarea rows="6" id="txtFullDes" name="txtFullDes" class="form-control"></textarea>
				</div>
				<div class="col-sm-2">Link ảnh </div>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="linkanh" name="linkanh" required/>
				</div>
				<button name="btnSave" class="btn btn-success" id="btnUpload">
					<span class="glyphicon glyphicon-ok" tyle="submit"></span>
					Lưu lại nè !
				</button>
			</div>
          </form>
        );
      }
}

export default CreateProduct;