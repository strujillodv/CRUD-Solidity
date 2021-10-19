// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract tasksContract {
    uint counter = 0;
    
    struct task {
        uint id;
        string title;
        string description;
        bool done;
    }
    
    mapping (uint => task) public tasks;
    
    function createTask (string memory _title, string memory _description) public {
        tasks[counter] = task(counter, _title, _description, false);
        counter++;
    }
    
    function readTask (uint _id) public view returns (uint, string memory, string memory,  bool) {
        return (tasks[_id].id, tasks[_id].title, tasks[_id].description, tasks[_id].done);
    }
    
    function updateTask (uint _id, string memory _title, string memory _description, bool _done) public {
        tasks[_id].title = _title;
        tasks[_id].description = _description;
        tasks[_id].done = _done;
    }
    
    function deleteTask (uint _id) public {
        delete tasks[_id];
    }
    
}

