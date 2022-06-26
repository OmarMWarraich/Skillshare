import Web3 from 'web3';

let web3;

if(typeof window !== 'undefined' && typeof window.web3 !== 'undefined') {
    // We are in the browser and metamask is running.
    web3 = new Web3(window.web3.currentProvider);
    console.log('Web3 is running in the browser and metamask is running.');
} else {
    // We are on the server *OR* the user is not running metamask.
    const provider = new Web3.providers.HttpProvider(
        'https://rinkeby.infura.io/v3/9b9f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8'
    );
    web3 = new Web3(provider);
    console.log('Web3 is running on the server and metamask is not running.');
}