import React from "react";
import "./User.css";


export interface UserInt {
    name: string;
    age: string;
    job: string;
    deleteUser: () => void
  }

const User: React.FC<UserInt> = ({ name, age, job, deleteUser }) => {
    return (
    <div className="card">
        <div className="row">
            <h2>Name: </h2>
            <p>John</p>
        </div>
        <hr />

        <div className="row">
            <h2>Age: </h2>
            <p>23</p>
        </div>
        <hr />

        <div className="row">
            <h2>Job: </h2>
            <p>Driver</p>
        </div>
        <button className="deleteBtn" onClick={deleteUser}>Delete user</button>
    </div>
    )
}

export default User;
