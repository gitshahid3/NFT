pragma solidity ^0.5.0;

import "./ERC721.sol";
import "./SafeMath.sol";

contract GameItem is ERC721Full {
    using SafeMath for uint256;
    uint256 private _tokenUri;

    constructor() ERC721("NFT Name", "SYMBOL") public {
    }

    function mint(address receiver, string memory tokenURI) public returns (uint256) {
    
        _mint(player, _tokenUri);
        _tokenUri = _tokenUri.add(1);


        return _tokenUri;
    }
}
