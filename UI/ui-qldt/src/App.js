import React, {Component} from 'react';
import logo from './logo.svg';
import './App.css';
import ProductList from "./components/ProductList";
import { BrowserRouter as Router, Switch, Route, Link } from 'react-router-dom';
import CelebrityCreate from "./components/CelebrityCreate";
import Modal from 'react-modal';
import Login from './components/Login';

class App extends Component {
    constructor() {
        super();

        this.state = {
            modalIsOpen: false
        };
    }

    openModal = () => {
        this.setState({modalIsOpen: true});
    }
    closeModal = () => {
        this.setState({modalIsOpen: false});
    }

    render() {
        return (
            <Router>
            <div>
               <h2>Welcome to React Router Tutorial</h2>
               <ul>
                  <li><Link to={'/'}>Home</Link></li>
                  <li><Link to={'/Login'}>Login</Link></li>
               </ul>
               <hr />
               
               <Switch>
                  <Route exact path='/' component={ProductList} />
                  <Route exact path='/Login' component={Login} />
               </Switch>
            </div>
            </Router>
        );
    }
}

export default App;
