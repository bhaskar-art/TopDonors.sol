// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TopDonors {
    struct Donor {
        address donorAddress;
        uint amount;
    }

    Donor[3] public topDonors;

    // Allow anyone to donate Ether
    function donate() public payable {
        require(msg.value > 0, "Must send some Ether");

        // Check if donor should be in top 3
        for (uint i = 0; i < 3; i++) {
            if (msg.value > topDonors[i].amount) {
                // Shift lower donors down
                for (uint j = 2; j > i; j--) {
                    topDonors[j] = topDonors[j - 1];
                }

                // Insert new top donor
                topDonors[i] = Donor(msg.sender, msg.value);
                break;
            }
        }
    }

    // View top donors
    function getTopDonors() public view returns (Donor[3] memory) {
        return topDonors;
    }
}