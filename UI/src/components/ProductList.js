import React from "react";
import Modal from 'react-modal';
import CreateProduct from './CreateProduct'
import UpdateProduct from './UpdateProduct'
class ProductList extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            error: null,
            isLoaded: false,
            items: [],
            modalIsOpen: false,
            modalIsUpdate: false,
            update: false,
            idM: 1
        };
    
        this.handleClickDelete = this.handleClickDelete.bind(this);
    }

    // load lại khi có update
    componentDidUpdate(prevProps, prevState) {
        if (this.state.update) {
            fetch("http://localhost:3001/api/products")
                .then(res => res.json())
                .then(
                    (result) => {
                        this.setState({
                            isLoaded: true,
                            update: false,
                            items: result
                        });
                    },
                    // Note: it's important to handle errors here
                    // instead of a catch() block so that we don't swallow
                    // exceptions from actual bugs in components.
                    (error) => {
                        this.setState({
                            isLoaded: true,
                            update: false,
                            error
                        });
                    }
                )
        }
    }


     // load lại khi có update
     componentWillReceiveProps(nextProps){
        fetch("http://localhost:3001/api/products")
                .then(res => res.json())
                .then(
                    (result) => {
                        this.setState({
                            isLoaded: true,
                            items: result
                        });
                    },
                    // Note: it's important to handle errors here
                    // instead of a catch() block so that we don't swallow
                    // exceptions from actual bugs in components.
                    (error) => {
                        this.setState({
                            isLoaded: true,
                            error
                        });
                    }
                )
      }
   
        // load lần đầu (môt lân duy nhât)
        componentDidMount() {
            fetch("http://localhost:3001/api/products")
                .then(res => res.json())
                .then(
                    (result) => {
                        this.setState({
                            isLoaded: true,
                            items: result
                        });
                    },
                    // Note: it's important to handle errors here
                    // instead of a catch() block so that we don't swallow
                    // exceptions from actual bugs in components.
                    (error) => {
                        this.setState({
                            isLoaded: true,
                            error
                        });
                    }
                )
        }

         // mở model để thêm mới sản phẩm
    openModal = () => {
        this.setState({modalIsOpen: true});
    }

    closeModal = () => {
        this.setState({modalIsOpen: false});
        this.setState({update: true});
    }

    openModalUpdate(e) {
        var id = e.currentTarget.dataset.id;
        this.setState({idM: id});
        this.setState({update: false});
        this.setState({modalIsUpdate: true});
    }

    closeModalUpdate = () => {
        this.setState({update: true});
        this.setState({modalIsUpdate: false});
    }
    // bắt sự kiện để delete
    handleClickDelete(e) {
        var id = e.currentTarget.dataset.id; 
        fetch('http://localhost:3001/api/products/' + id , {
            method: 'Delete',
            headers: {
                'Accept': 'application/json',
                'Authorization': 'whatever-you-want',
                'Content-Type': 'application/json'
                },
        })
        .then(res => res.json())
        .then(
            (result) => {
                this.setState({
                    update: true
                });
            },
            // Note: it's important to handle errors here
            // instead of a catch() block so that we don't swallow
            // exceptions from actual bugs in components.
            (error) => {
                this.setState({
                    update: false,
                    error
                });
            }
        );
        alert('Xóa thành công !');
    }
   

    render() {
        const {error, isLoaded, items} = this.state;
        if (error) {
            return <div>Error: {error.message}</div>;
        } else if (!isLoaded) {
            return <div>Loading...</div>;
        } else {
            return (
                <div className="row">
                    <div class="col-md-12">
                        <button class="center-content"  onClick={this.openModal}>Thêm mới sản phẩm</button>
                        <Modal
                            isOpen={this.state.modalIsOpen}
                            onRequestClose={this.closeModal}
                            contentLabel="Example Modal">
                            <h2 ref={subtitle => this.subtitle = subtitle}>Thêm mới sản phẩm</h2>
                            <CreateProduct/>
                            <button class="btn btn-default" onClick={this.closeModal}>Close lại</button>
                            
                        </Modal>
                    </div>
                    {items.map(item => (
                        <div className="col-md-4" key={item.idM}>
                            <div className="card mb-4 box-shadow">
                                <img className="card-img-top"
                                     src={item.linkAnh}
                                     alt="Card image cap" />
                                    <div className="card-body">
                                        <p className="card-text">{item.tenMay}</p>
                                        <div className="d-flex justify-content-between align-items-center">
                                            <div className="btn-group">
                                                <button type="button" onClick={this.openModalUpdate.bind(this)} data-id={item.idM}
                                                        className="btn btn-sm btn-outline-secondary">Edit
                                                </button>
                                                <Modal
                                                    isOpen={this.state.modalIsUpdate}
                                                    onRequestClose={this.closeModalUpdate}
                                                    contentLabel="Example Modal">
                                                    <h2 ref={subtitle => this.subtitle = subtitle}>Sửa lại sản phẩm</h2>
                                                    <UpdateProduct id={this.state.idM}/>
                                                    <button class="btn btn-default" onClick={this.closeModalUpdate}>Close lại</button>
                                                </Modal>
                                                <button type="button" onClick={this.handleClickDelete.bind(this)} data-id={item.idM}
                                                        className="btn btn-sm btn-outline-secondary">Delete
                                                </button>
                                            </div>
                                            <small className="text-muted">9 mins</small>
                                        </div>
                                    </div>
                            </div>
                        </div>
                        ))
                        }
                </div>
            );
        }
    }
}

export default ProductList;