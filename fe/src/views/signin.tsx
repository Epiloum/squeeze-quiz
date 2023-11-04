import React from 'react';
import { Provider } from "react-redux";
import { useSelector, useDispatch } from 'react-redux';

function SignIn(props: any) {
    return (
        <div className="signin">
            <hgroup>
                <h1>Squeeze Quiz</h1>
                <h2>마지막 암기력 한방울까지 · 스퀴즈 퀴즈</h2>
            </hgroup>
            <form>
                <input type="text" name="email" placeholder="Email Address" />
                <input type="submit" value="Enter" />
            </form>
            <div className="bg"></div>
        </div>
    )
}

export default SignIn;