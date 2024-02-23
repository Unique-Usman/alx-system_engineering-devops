#!/usr/bin/python3

"""
Give out the information for given employee ID,
returns information about his/her TODO list progress.
"""
import sys
import requests


def print_details():
    """
    Print out the todo list information for a given employee ID
    """
    user_id = int(sys.argv[1])
    res = \
        requests.get(f"https://jsonplaceholder.typicode.com/users/{user_id}")
    res = res.json()
    todos = requests.get("https://jsonplaceholder.typicode.com/todos").json()
    user_todo = []

    for todo in todos:
        if todo.get("userId") == user_id:
            user_todo.append(todo)

    number_completed = 0

    todo_name = []
    for todo in user_todo:
        if todo.get("completed"):
            number_completed += 1
        todo_name.append(todo.get("title"))

    string_todo_name = "\n\t".join(todo_name)

    print(f"""Employee {res.get("name")} is done \
with task({number_completed}/{len(user_todo)}):
\t{string_todo_name}
""")


if __name__ == "__main__":
    print_details()
