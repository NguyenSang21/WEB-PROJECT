import React, {Component} from 'react';
import ProductList from "./ProductList";
import Modal from 'react-modal';
import PanelLeft from './PanelLeft';
import PanelRight from './PanelRight';

class Main extends Component {
    render() {
        return (
            <div>
                <PanelLeft/>
                <PanelRight/>   
            </div>
        );
    }
}

export default Main;
