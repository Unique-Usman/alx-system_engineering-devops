#!/usr/bin/python3
"""
Give out the information for given employee ID,
returns information about his/her TODO list progress
In json format
"""
import json
import requests
import sys


def print_details_json(user_id):
    """
    Print out the todo list information for a given employee ID
    """
    res = \
        requests.get(f"https://jsonplaceholder.typicode.com/users/{user_id}")
    res = res.json()
    username = res.get("username")
    todos = requests.get("https://jsonplaceholder.typicode.com/todos").json()
    user_todo = []
    for todo in todos:
        if todo.get("userId") == user_id:
            user_todo.append(todo)
    ans = []
    for user in user_todo:
        temp = {"task": user.get("title"), "completed": user.get("completed"),
                "username": username}
        ans.append(temp)
    finalans = {}
    finalans = {f"{user_id}": ans}
    with open(f"{user_id}.json", "w", encoding="utf-8") as f:
        json.dump(finalans, f)
    print(finalans)


if __name__ == "__main__":
    print_details_json(int(sys.argv[1]))
