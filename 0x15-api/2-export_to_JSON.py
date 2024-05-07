#!/usr/bin/python3
"""Accessing a REST API for todo lists of employees"""

import json
import requests
import sys

if __name__ == '__main__':
    # Get the employee ID from the command-line arguments
    employeeId = sys.argv[1]
    
    # Base URL for the JSONPlaceholder API
    baseUrl = "https://jsonplaceholder.typicode.com/users"
    
    # Construct the URL to fetch employee information
    url = baseUrl + "/" + employeeId

    # Send a GET request to fetch employee information
    response = requests.get(url)
    
    # Extract the username from the response JSON
    username = response.json().get('username')

    # Construct the URL to fetch the todo list of the employee
    todoUrl = url + "/todos"
    
    # Send a GET request to fetch the todo list
    response = requests.get(todoUrl)
    
    # Extract the todo list tasks from the response JSON
    tasks = response.json()

    # Create a dictionary to store todo list tasks with username
    dictionary = {employeeId: []}
    
    # Populate the dictionary with todo list tasks and username
    for task in tasks:
        dictionary[employeeId].append({
            "task": task.get('title'),
            "completed": task.get('completed'),
            "username": username
        })
    
    # Write the dictionary to a JSON file named after the employee ID
    with open('{}.json'.format(employeeId), 'w') as filename:
        json.dump(dictionary, filename)
