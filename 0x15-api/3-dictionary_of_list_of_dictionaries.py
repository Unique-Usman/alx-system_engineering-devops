#!/usr/bin/python3
"""
Give out the information for given employee ID,
returns information about his/her TODO list progress
In json format
"""
import json
import requests


def return_details_json(user_id):
    """
    Return the todo list information for a given employee ID
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
    return finalans


def combine_ans():
    """
    Combine all the todolist for each of the users
    """
    finalans = []
    res = \
        requests.get(f"https://jsonplaceholder.typicode.com/users")
    res = res.json()
    for ele in res:
        finalans.append(return_details_json(ele.get("id")))
    with open("todo_all_employees.json", "w", encoding="utf-8") as f:
        json.dump(finalans, f)


if __name__ == "__main__":
    combine_ans()
