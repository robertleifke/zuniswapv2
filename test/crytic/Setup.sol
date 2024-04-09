// // SPDX-License-Identifier: Unlicense
// pragma solidity ^0.8.7;

// import { ERC20Mintable } from "../mocks/ERC20mintable.sol";
// import { ZuniswapV2Pair } from "src/ZuniswapV2Pair.sol";
// import { ZuniswapV2Factory } from "src/ZuniswapV2Factory.sol";
// import { ZuniswapV2Library } from "src/ZuniswapV2Library.sol";

// contract Users {
//     function proxy(address target, bytes memory data) public returns (bool success, bytes memory retData) {
//         return target.call(data);
//     }
// }

// contract Setup {
//     // UniswapV2Factory factory;
//     ZuniswapV2Pair pair;
//     ERC20Mintable testToken1;
//     ERC20Mintable testToken2;
//     Users user;
//     bool completed;
    
//     constructor() public {
//         // user = new User();

//         testToken1 = new ERC20Mintable("Token A", "TKNA");
//         testToken2 = new ERC20Mintable("Token B", "TKNB");

//         ZuniswapV2Factory factory = new ZuniswapV2Factory(address(this));

//         pair = ZuniswapV2Pair(factory.createPair(address(testToken1), address(testToken2)));
//         // Sort the test tokens we just created, for clarity when writing invariant tests later
//         (address testTokenA, address testTokenB) = ZuniswapV2Library.sortTokens(address(testToken1), address(testToken2));
//         testToken1 = ERC20Mintable (testTokenA);
//         testToken2 = ERC20Mintable (testTokenB);
//         user = new Users();
//         user.proxy(address(testToken1),abi.encodeWithSelector(testToken1.approve.selector, address(pair),uint(-1)));
//         user.proxy(address(testToken2), abi.encodeWithSelector(testToken2.approve.selector,address(pair),uint(-1)));
//     }

//     function _init(uint amount1, uint amount2) internal {
//         testToken1.mint(address(user), amount1);
//         testToken2.mint(address(user), amount2);
//         completed = true;
//     }


//     function _between(uint val, uint low, uint high) internal pure returns(uint) {
//         return low + (val % (high-low +1)); 
//     }


// }