import React, { Component } from 'react';
import Button from '@mui/material/Button';
import TextField from '@mui/material/TextField';
import CircularProgress from '@mui/material/CircularProgress';

class Contribute extends Component {

  render() {
    return (
      <div>
        <div class="contribute">Contribute</div>
          <div class=" contributeContainer">
            <form>
              <div class="buyCoins">
                <div class="amountToBuy">Amount of ether to buy:</div>
                <TextField> </TextField>
                <div> ≈  DC </div>
                <div class="etherDC"> (1 ETH ≈ 100 + 25 (Bonus) DC) </div>
              </div>
              <div class="buttonBuy">
                <Button type="submit" variant="contained" color="primary" value="Submit">Buy DC Tokens | 25% Bonus </Button>
              </div>
            </form>

            <div class="flex errorMessage">
              <i class="material-icons">error_outline</i>
              <div >Error Message: asydassadasdas</div>
            </div>

            <div class="flex loadingContainer">
              <div>
                <div class="loadingText"> Waiting For Confirmation</div>
                <div class="loadTextSub">(this can take up to 30 seconds)</div>
              </div>
              <CircularProgress/>
            </div>

            <div class="flex successfully">You successfully bought DC Coins!</div>

        </div>
      </div>
    );
  }
}

export default Contribute;