import React from "react";
import fetch from 'isomorphic-fetch'

class CelebrityCreate extends React.Component {

    constructor() {
        super();
        this.handleSubmit = this.handleSubmit.bind(this);
      }
      
      
      handleSubmit(event) {
        event.preventDefault();
        const data = new FormData(event.target);
        console.log(data.get('name'));
        fetch('http://localhost:3001/api/celebrities', {
            method: 'POST',
            headers: {
                'Accept': 'application/json',
                'Authorization': 'whatever-you-want',
                'Content-Type': 'application/json'
                },
            body: JSON.stringify({
                image_url: data.get('image_url'),
                name: data.get('name'),
                description: data.get('description'),
              })
        });
        alert('Thêm thành công');
    
      }
    


      render() {
        return (
          <form onSubmit={this.handleSubmit}>
            <label htmlFor="name">Nhập vào Tên</label>
            <input id="name" name="name" type="text" />
    
            <label htmlFor="image">Link ảnh</label>
            <input id="image_url" name="image_url" type="text" />
    
            <label htmlFor="Descript">Mô tả</label>
            <input id="description" name="description" type="text" />
        
            <button>Send data!</button>
            
          </form>
        );
      }
}

export default CelebrityCreate;