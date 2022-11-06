//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;


contract Todo {

    struct Job {
        string content;
        bool status;
    }

    Job[] public jobs; //storage

    function addJob(string memory _content) public {
        Job memory job;
        job.content = _content;
        jobs.push(job);
    }

    function updateJob(uint i) public {
        jobs[i].status = !jobs[i].status;
    }

    function list() public view returns(Job[] memory) {
        return jobs;
    }

    function deleteJob(uint i) public {
        for(uint index = i; index < 5; index++ ) {
            jobs[index] = jobs[index+1];
        }
        jobs.pop();
    }

}
