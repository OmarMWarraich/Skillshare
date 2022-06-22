// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract GameItem is ERC721URIStorage {
  using Counters for Counters.Counter;
  Counters.Counter private _tokenIds;

  constructor() ERC721("GameItem", "TIM") {}
    function awardItem(address player, string memory tokenURI)
        public
        returns (uint256)
    {
      _tokenIds.increment();

      uint256  newItemId = _tokenIds.current();
      _mint(player, newItemId);
      _setTokenURI(newItemId, tokenURI);

      return newItemId;
    }
  
}
