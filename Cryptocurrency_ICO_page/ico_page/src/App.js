import React, { Component } from 'react';
import './App.css';
import Button from '@mui/material/Button';

function App() {
  return (
    <div>
      <nav>
        <a href="/" class="titleICO">
          <div>DEMOICO</div>
        </a>
        <div class="nav-links">
          <a id="about" href="/about"><Button>About</Button></a>
          <a id="whitepaper" href="/whitepaper"><Button>Whitepaper</Button></a>
          <a id="roadmap" href="/roadmap"><Button>Roadmap</Button></a>
          <a id="team" href="/team"><Button>Team</Button></a>
        </div> 
        
        <div class="nav-address">
          <div class="address"><Button variant="text">Adress: "0x0"</Button></div>
          <div class="eth"><Button>ETH: 12</Button></div>
          <div class="dctoken"><Button>My DC: 1223</Button></div>
        </div>

      </nav>
    </div>
  );
}

export default App;
