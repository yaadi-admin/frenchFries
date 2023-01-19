//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract frenchDries {
    enum Size {REGULAR, LARGE, SUPERSIZE}
    Size choice;

    function setChoice(Size _choice) public {
        if (uint(_choice)==0) {
            choice = Size.REGULAR;
        }
        else {
            if (uint(_choice)==1) {
                choice = Size.LARGE;
            }
            else {
                choice = Size.SUPERSIZE;
            }
        }
    }

    function getChoice() public view returns (Size) {
        return choice;
    }

}