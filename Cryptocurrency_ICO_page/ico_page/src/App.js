import React, { Component } from 'react';
import './css/App.css';
import Button from '@mui/material/Button';
import Start from './components/Start';
import About from './components/About';


class App extends Component {
  render() {
    return (
      <div>
        <nav>
          <a href="/" class="titleICO">
            <i class="material-icons">group_work</i>
            <div>DEMOICO</div>
          </a>

          <div class="middleNav">
            <a id="about"><Button>About</Button></a>
            <a id="whitepaper"><Button>Whitepaper</Button></a>
            <a id="roadmap"><Button>Roadmap</Button></a>
            <a id="team"><Button>Team</Button></a>
          </div>

          <div class="rightNav">
            <i class="material-icons">account_box</i>

            <div class="myAccountBox">
              <div class="address"> Address: 0x47d8e19Ab54CED9d4Afc7C5519C6481C3D893d8d </div>
              <div class="eth"> ETH: 12 </div>
              <div class="dctoken"> My DC: 1223 </div>
            </div>

          </div>

        </nav>

        <div id="startDiv"><Start /></div>
        <div id="aboutDiv"><About /></div>
      </div>
    );
  }
}

export default App;