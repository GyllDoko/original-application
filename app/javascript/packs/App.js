import React, { useEffect } from 'react'
import { HashRouter, Switch, Route, Redirect } from 'react-router-dom'
import Home from '../component/Home'

export default function App() {

    return (
        <HashRouter>
            <Switch>
                <Route path="/" exact component={Home} />
            </Switch>
        </HashRouter>
    )
}
