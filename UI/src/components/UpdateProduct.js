import React from "react";
import fetch from 'isomorphic-fetch'

class UpdateProduct extends React.Component {

    constructor() {
        super();
        this.state = {
          error: null,
          isLoaded: false,
          tenMay: "",
          NSX: "",
          ManHinh: "",
          HDH: "",
          CPU: "",
          RAM: "",
          CAMERA: "",
          PIN: "",
          Gia: "",
          ghiChu: "",
          slMacDinh: "",
          slHienTai: "",
          slXem: "",
          ngSX: "",
          Loai: "",
          Comment: "",
          MoTa: "",
          linkAnh: "",
        };
        this.handleSubmit = this.handleSubmit.bind(this);
        this.updateTenMay = this.updateTenMay.bind(this);
        this.updateNSX = this.updateNSX.bind(this);
        this.updateManHinh = this.updateManHinh.bind(this);
        this.updateHDH = this.updateHDH.bind(this);
        this.updateCPU = this.updateCPU.bind(this);
        this.updateRAM = this.updateRAM.bind(this);
        this.updateCAMERA = this.updateCAMERA.bind(this);
        this.updatePIN = this.updatePIN.bind(this);
        this.updateGia = this.updateGia.bind(this);
        this.updateghiChu = this.updateghiChu.bind(this);
        this.updateslMacDinh = this.updateslMacDinh.bind(this);
        this.updateslHienTai = this.updateslHienTai.bind(this);
        this.updateslXem = this.updateslXem.bind(this);
        this.updatengSX = this.updatengSX.bind(this);
        this.updateLoai = this.updateLoai.bind(this);
        this.updateComment = this.updateComment.bind(this);
        this.updateMoTa = this.updateMoTa.bind(this);
        this.updatelinkAnh = this.updatelinkAnh.bind(this);
    }
      
      handleSubmit(event) {
          event.preventDefault();
          var id = this.props.id;
		      const data = new FormData(event.target);
          fetch('http://localhost:3001/api/products', {
            method: 'PUT',
            headers: {
                'Accept': 'application/json',
                'Authorization': 'whatever-you-want',
                'Content-Type': 'application/json'
                },
            body: JSON.stringify({
                idM: id,
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

      updateTenMay(event) {
        this.setState({tenMay: event.target.value});
      }

      updateNSX(event) {
        this.setState({NSX: event.target.value});
      }

      updateManHinh(event) {
        this.setState({ManHinh: event.target.value});
      }

      updateHDH(event) {
        this.setState({HDH: event.target.value});
      }

      updateCPU(event) {
        this.setState({CPU: event.target.value});
      }
      
      updateRAM(event) {
        this.setState({RAM: event.target.value});
      }

      updateCAMERA(event) {
        this.setState({CAMERA: event.target.value});
      }

      updatePIN(event) {
        this.setState({PIN: event.target.value});
      }

      updateGia(event) {
        this.setState({Gia: event.target.value});
      }

      updateghiChu(event) {
        this.setState({ghiChu: event.target.value});
      }

      updateslMacDinh(event) {
        this.setState({slMacDinh: event.target.value});
      }

      updateslHienTai(event) {
        this.setState({slHienTai: event.target.value});
      }

      updateslXem(event) {
        this.setState({slXem: event.target.value});
      }

      updatengSX(event) {
        this.setState({ngSX: event.target.value});
      }

      updateLoai(event) {
        this.setState({Loai: event.target.value});
      }

      updateComment(event) {
        this.setState({Comment: event.target.value});
      }

      updateMoTa(event) {
        this.setState({MoTa: event.target.value});
      }

      updatelinkAnh(event) {
        this.setState({linkAnh: event.target.value});
      }

      componentDidMount() {
        var id = this.props.id;
        fetch("http://localhost:3001/api/products/"+ id)
            .then(res => res.json())
            .then(
                (result) => {
                    this.setState({
                        isLoaded: true,
                        tenMay: result[0].tenMay,
                        NSX: result[0].NSX,
                        ManHinh: result[0].ManHinh,
                        HDH: result[0].HDH,
                        CPU: result[0].CPU,
                        RAM: result[0].RAM,
                        CAMERA: result[0].CAMERA,
                        PIN: result[0].PIN,
                        Gia: result[0].Gia,
                        ghiChu: result[0].ghiChu,
                        slMacDinh: result[0].slMatDinh,
                        slHienTai: result[0].slHienTai,
                        slXem: result[0].slXem,
                        ngSX: result[0].ngSX,
                        Loai: result[0].Loai,
                        Comment: result[0].Comment,
                        MoTa: result[0].MoTa,
                        linkAnh: result[0].linkAnh,
                    });
                },
                (error) => {
                    this.setState({
                        isLoaded: true,
                        error
                    });
                }
            )
    }

      render() {
        const {error, isLoaded, items} = this.state;
        if (error) {
            return <div>Error: {error.message}</div>;
        } else if (!isLoaded) {
            return <div>Loading...</div>;
        } else if(isLoaded){
        return (
          <form onSubmit={this.handleSubmit}>
              <div class="container" key={this.state.idM}>
                  <div class="row">
                  <div class="col-sm-1">Tên Sản phẩm</div>
                  <div class="col-sm-3">
                    <input value={this.state.tenMay} onChange={this.updateTenMay} required maxlength="50" type="text" class="form-control" id="tenMay" name="tenMay" placeholder="iPhone X"/>
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
                    <input value={this.state.ManHinh} onChange={this.updateManHinh} required maxlength="30" type="text" class="form-control" id="MH" name="MH"/>
                  </div>
                  <div class="col-sm-1">Hệ điều hành</div>
                  <div class="col-sm-3">
                    <input value={this.state.HDH} onChange={this.updateHDH} required maxlength="30" type="text" class="form-control" id="HDH" name="HDH" placeholder="Android 8.0"/>
                  </div>

                  <div class="col-sm-1">CPU</div>
                  <div class="col-sm-3">
                    <input value={this.state.CPU} onChange={this.updateCPU} required maxlength="30" type="text" class="form-control" id="CPU" name="CPU" placeholder="Chip Intel"/>
                  </div>
                  
                </div>

                <div class="row">
                  <div class="col-sm-1">RAM</div>
                  <div class="col-sm-3">
                    <input value={this.state.RAM} onChange={this.updateRAM} required maxlength="30" type="text" class="form-control" id="RAM" name="RAM" placeholder="8 GB ,ROM 128 GB"/>
                  </div>

                  <div class="col-sm-1">CAMERA</div>
                  <div class="col-sm-3">
                    <input value={this.state.CAMERA} onChange={this.updateCAMERA} required maxlength="30" type="text" class="form-control" id="CAMERA" name="CAMERA" placeholder="Trước 12 MP,Selfie 8MP "/>
                  </div>

                  <div class="col-sm-1">PIN</div>
                  <div class="col-sm-3">
                    <input value={this.state.PIN} onChange={this.updatePIN} required maxlength="10" type="text" class="form-control" id="PIN" name="PIN" placeholder="3000 mAh"/>
                  </div>
                </div>

                <div class="row">
                  <div class="col-sm-1">Giá</div>
                  <div class="col-sm-3">
                    <input value={this.state.Gia} onChange={this.updateGia} required maxlength="10" min="0" type="number" class="form-control" id="txtPrice" name="txtPrice" placeholder="30,000,000"/>
                  </div>

                  <div class="col-sm-1">Số Lượng</div>
                  <div class="col-sm-3">
                    <input value={this.state.slHienTai} onChange={this.updateslHienTai} required maxlength="4" max="1000" min="1" type="number" class="form-control" id="slSP" name="slSP" min="1" max="200" placeholder="30"/>
                  </div>

                  <div  class="col-sm-1">Ngày sản xuất</div>
                  <div class="col-sm-3">
                    <input value={this.state.ngSX} onChange={this.updatengSX} required maxlength="30" type="date" class="form-control" id="NgaySX" name="NgaySX" />
                  </div>
                </div>

                <div class="row">
                  <div class="col-sm-2">Mô tả chi tiết</div>
                  <div class="col-sm-10">
                    <textarea value={this.state.MoTa} onChange={this.updateMoTa} rows="6" id="txtFullDes" name="txtFullDes" class="form-control"></textarea>
                  </div>
                  <div class="col-sm-2">Link ảnh</div>
                  <div class="col-sm-10">
                    <input value={this.state.linkAnh} onChange={this.updatelinkAnh} type="text" class="form-control" id="linkanh" name="linkanh" required/>
                  </div>
                  <button name="btnSave" class="btn btn-success" id="btnUpload">
                    <span class="glyphicon glyphicon-ok" tyle="submit"></span>
                    Lưu lại nè !
                  </button>
                </div>  
              </div>
          </form>
        );
      }
    }
}

export default UpdateProduct;