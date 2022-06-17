import React from 'react';
import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="Container">
      <h1>React with TypeScript</h1>
      <form>
        <label htmlFor="userName">Name:</label>
        <input
          id="userName"
          type="text"
          name="name"
          value=""
        />

        <label htmlFor="userAge">Age:</label>
        <input
          id="userAge"
          type="number"
          name="age"
          value=""
        />

        <label htmlFor="userJob">Job:</label>
        <input
          id="userJob"
          type="text"
          name="job"
          value=""
        />

        <button type="submit">Add User</button>
      </form>
    </div>
  );
}

export default App;
