import React from 'react';
import ReactDOM from 'react-dom';
import Main from './components/Main';
import registerServiceWorker from './registerServiceWorker';
import { BrowserRouter as Router, Route } from 'react-router-dom';

ReactDOM.render(
    <Router>
        <Router path="/">
            <Route component={Main}/>
        </Router>
    </Router>
    , document.getElementById('root'));
registerServiceWorker();
