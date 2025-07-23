// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.28;

import "forge-std/Script.sol";
import "../src/Storage.sol";

contract DeployScript is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        
        vm.startBroadcast(deployerPrivateKey);
        
        Storage storage_contract = new Storage();
        
        vm.stopBroadcast();
        
        console.log("Storage contract deployed to:", address(storage_contract));
    }
}