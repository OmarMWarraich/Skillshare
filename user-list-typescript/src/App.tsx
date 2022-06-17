import React, {useState} from "react";
import './App.css';

const App: React.FC = () => {
  interface UserInt {
    name: string,
    age: string,
    job: string
  }

const [usersState, setUsersState] = useState<{ currentUser: UserInt }> ({
      currentUser: {
      name: "",
      age: "",
      job:""
    }
})

const onChangeHandler = (e: React.ChangeEvent<HTMLInputElement>) : void => {
  setUsersState({
    currentUser: {
      ...usersState.currentUser,
      [e.target.name] : e.target.value      
    }
  })
}

console.log(usersState.currentUser);

  return (
    <div className="Container">
      <h1>React with TypeScript</h1>
      <form>
        <label htmlFor="userName">Name:</label>
        <input
          id="userName"
          type="text"
          name="name"
          value={usersState.currentUser.name}
          onChange = {onChangeHandler}
        />

        <label htmlFor="userAge">Age:</label>
        <input
          id="userAge"
          type="text"
          name="age"
          value={usersState.currentUser.age}
          onChange = {onChangeHandler}
        />

        <label htmlFor="userJob">Job:</label>
        <input
          id="userJob"
          type="text"
          name="job"
          value={usersState.currentUser.job}
          onChange = {onChangeHandler}
        />

        <button type="submit">Add User</button>
      </form>
    </div>
  );
}

export default App;
