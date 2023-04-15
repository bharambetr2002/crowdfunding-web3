// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract CrowdFuniding {
    struct Campaign {
        address owner;
        string title;
        string description;
        uint256 target;
        uint256 deadline;
        uint256 amountCollected;
        string image;
        address[] donators;
        uint256[] donations;
    }
    mapping(uint256 => Campaign) public campaigns;

    uint256 public numberOfCampaigns = 0;

    function createCampaign(address _owner, string memory _tittle, string memory _description, uint256 _target, uint256 _deadline, string memory _image) public returns (uint256) {
        Campaign storage campaign = campaigns[numberOfCampaigns]

        require(campaign.deadline < block.timestamp, "The deadline should be a date in the future.");
    }

    function donateToCampaign() {}

    function getDonators() {}
}
