// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;


import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { OFT } from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFT.sol";

address constant lzEndpoint = 0x6EDCE65403992e310A62460808c4b910D972f10f;
address constant delegate = 0x41923d8c6053517b9C5ABe4e2b506A26946771d4;

address constant Andrei = 0xc5C77EC5A79340f0240D6eE8224099F664A08EEb;

// etherlink 0x07803d183f85D31AbE3D0A7C6f7479A99363a33A
// sepolia 0x19004B8bb3a2B3d03D87580cA769C592793ad42E
// pad this address with zeros to make it 32 bytes long
// 0x000000000000000000000000c5C77EC5A79340f0240D6eE8224099F664A08EEb
// 0xc5C77EC5A79340f0240D6eE8224099F664A08EEb
// // 0.1 ETH in wei in decimals 
// uint256 constant amount = 100000000000000000;


//[['0x000000000000000000000000c5C77EC5A79340f0240D6eE8224099F664A08EEb', 2, 1, '', '']]

contract LzSend is OFT {
    
    constructor(
        address _lzEndpoint,
        address _delegate
    ) OFT("LzSend", "LZS", _lzEndpoint, _delegate) Ownable(_delegate) {
        // make us rich
        _mint(msg.sender, 10^18);
        // mint to Andrei
        _mint(Andrei, 10^18);

    }
}
