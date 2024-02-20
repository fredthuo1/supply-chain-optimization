// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract SupplyChain {
    struct Product {
        uint id;
        string name;
        address owner;
    }

    mapping(uint => Product) public products;
    uint public productCount;

    function addProduct(string memory _name) public {
        productCount++;
        products[productCount] = Product(productCount, _name, msg.sender);
    }
}

