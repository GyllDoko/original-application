import React, { useEffect } from 'react'
import { BrowserRouter, Switch, Route, Redirect } from 'react-router-dom'
import Home from '../component/Home'

export default function App() {

    return (
        <BrowserRouter>
            <Switch>
                <Route path="/app" exact component={Home} />
                <Route path="/users/sign_in" exact />
            </Switch>
        </BrowserRouter>
    )
}
