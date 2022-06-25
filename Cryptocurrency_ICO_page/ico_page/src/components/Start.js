import React, {Component} from 'react';
import Button from '@mui/material/Button';
import { Player, BigPlayButton, ControlBar } from 'video-react';

class Start extends Component {

  render() {
    return (
      <div>
        <div class="container">
          <div class="containerMiddle">
            <div class="header1">#ICO Landing page for your cryptocurrency project</div>

            <div class="flex">
              <div class="textArea">
                <div>Decentralized Demo Platform for ICO Developers, Advisors, Crypto-Experts
                     and Investors. </div>
                <div class="buttonContainer">
                  <div> <Button variant="contained" color="primary"> SIGN UP TO JOIN </Button> </div>
                </div>
              </div>

              <div class="movieContainer">
                <Player poster="https://blog.sodio.tech/wp-content/uploads/2018/03/ethex-is-decentralized2x.1551cb1c.png" src="https://media.w3.org/2010/05/sintel/trailer_hd.mp4" >
                  <BigPlayButton position="center" />
                   <ControlBar autoHide={true} disableCompletely={true} />
                </Player>
              </div>
            </div>

            <div class="tokenSaleContainer flex">
              <div class="tokenSaleLeftSide">
                <div class="flex space-between">
                  <div class="tokensSold">Tokens Sold: 20</div>
                  <div class="contributors">Contributers:<b> 50</b></div>
                </div>
                <div class="totalSuppy">10 <b>DC</b></div>
                <div id="contribute" href=""><Button variant="contained" color="primary" >BUY TOKENS | 25% Bonus</Button></div>
              </div>

              <div class="tokenSaleRightSide">
                <div class="titleTokenSale">TOKEN SALE IS LIVE</div>
                <div class="tokenSaleEnds"> TOKEN SALE ENDs IN </div>
                <div class="time flex space-around">
                  <div>
                    <div class="headerTime">23</div>
                    <div>Days</div>
                  </div>
                  <div>
                    <div class="headerTime" >12</div>
                    <div>Hours</div>
                  </div>
                  <div>
                    <div class="headerTime" >49</div>
                    <div>Min</div>
                  </div>
                  <div>
                    <div class="headerTime" >2</div>
                    <div>Sec</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="Icons space-around flex">
          <i class="fab fa-bitcoin"></i>
          <i class="fab fa-facebook-f"></i>
          <i class="fab fa-telegram-plane"></i>
          <i class="fab fa-twitter"></i>
          <i class="fab fa-reddit-alien"></i>
        </div>
      </div>
    );
  }

}

export default Start;