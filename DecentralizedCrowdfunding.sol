// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract DecentralizedCrowdfunding {
    struct Project {
        string title;
        string description;
        address creator;
    }

    Project public project;

    constructor(string memory _title, string memory _description) {
        project = Project({
            title: _title,
            description: _description,
            creator: msg.sender
        });
    }

    function getProjectDetails() public view returns (string memory, string memory, address) {
        return (project.title, project.description, project.creator);
    }
}

