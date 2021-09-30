import React from 'react'
import { BrowserRouter, Switch, Route } from 'react-router-dom'
import Home from '../component/Home'

export default function App() {
    return (
        <BrowserRouter>
            <Switch>
                <Route path="/" exact component={Home} />
            </Switch>
        </BrowserRouter>
    )
}
