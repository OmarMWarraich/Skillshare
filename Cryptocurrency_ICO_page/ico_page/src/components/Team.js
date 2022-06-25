import React, { Component } from 'react';

class Team extends Component {

  render() {

    return (
        <div>
          <div class="team"> Team </div>
          <div class="teamSub"> Our people are our greatest asset and biggest differentiator.</div>
          <div class="teamSub"> They also believe in having a lot of fun along the way. </div>

          <div class="teamPics">
          
            <div class="circlePic">
              <img src="https://questortech.com/wp-content/uploads/2018/07/placeholder-man.png"/>
              <div class="userName"> Donald Trump </div>
              <div class="userText"> The CEO and bla bla, Before </div>
              <div class="userText">  Owner and  ... </div>
            </div>

            <div class="circlePic">
              <img src="https://questortech.com/wp-content/uploads/2018/07/placeholder-man.png"/>
              <div class="userName"> Barack Obama </div>
              <div class="userText"> The CEO and bla bla, Before </div>
              <div class="userText">  Owner and  ... </div>
            </div>

            <div class="circlePic">
              <img src="https://questortech.com/wp-content/uploads/2018/07/placeholder-man.png"/>
              <div class="userName"> Angela Merkel </div>
              <div class="userText"> The CEO and bla bla, Before </div>
              <div class="userText">  Owner and  ... </div>
            </div>
          </div>

        </div>

    );
  }
}

export default Team;