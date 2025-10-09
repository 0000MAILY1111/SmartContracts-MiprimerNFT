// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MiPrimeraColeccionNFT {
    string public name = "MiPrimeraColeccionNFT";
    string public symbol = "MPCNFT";
    address public owner;
    
    uint256 public totalSupply;
    uint256 public maxSupply = 100;
    uint256 public mintPrice = 0.01 ether;
    
    mapping(uint256 => address) public ownerOf;
    mapping(address => uint256) public balanceOf;
    
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    event Minted(address indexed to, uint256 indexed tokenId);
    
    modifier onlyOwner() {
        require(msg.sender == owner, "No eres el owner");
        _;
    }
    
    constructor() {
        owner = msg.sender;
    }
    
    function mint() public payable {
        require(totalSupply < maxSupply, "Coleccion completa");
        require(msg.value >= mintPrice, "ETH insuficiente");
        
        uint256 tokenId = totalSupply;
        totalSupply++;
        
        ownerOf[tokenId] = msg.sender;
        balanceOf[msg.sender]++;
        
        emit Transfer(address(0), msg.sender, tokenId);
        emit Minted(msg.sender, tokenId);
    }
    
    function transfer(address to, uint256 tokenId) public {
        require(ownerOf[tokenId] == msg.sender, "No eres el dueno del NFT");
        require(to != address(0), "Direccion invalida");
        
        balanceOf[msg.sender]--;
        balanceOf[to]++;
        ownerOf[tokenId] = to;
        
        emit Transfer(msg.sender, to, tokenId);
    }
    
    function setMintPrice(uint256 newPrice) public onlyOwner {
        mintPrice = newPrice;
    }
    
    function withdraw() public onlyOwner {
        uint256 balance = address(this).balance;
        require(balance > 0, "Sin fondos");
        payable(owner).transfer(balance);
    }
    
    function tokensOfOwner(address tokenOwner) public view returns (uint256[] memory) {
        uint256 tokenCount = balanceOf[tokenOwner];
        uint256[] memory tokenIds = new uint256[](tokenCount);
        uint256 index = 0;
        
        for (uint256 i = 0; i < totalSupply; i++) {
            if (ownerOf[i] == tokenOwner) {
                tokenIds[index] = i;
                index++;
            }
        }
        return tokenIds;
    }
}