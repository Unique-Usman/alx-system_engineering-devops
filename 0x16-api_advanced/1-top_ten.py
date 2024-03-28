#!/usr/bin/python3
"""
A function that returns top ten
hot topic for a particular subredit
"""
import requests


def top_ten(subreddit):
    """
    Returns the number of top ten hot posts
    for a particular subreddit

    Args:
        subreddit (str): The subreddit
    """
    headers = requests.utils.default_headers()
    headers.update({'User-Agent': 'UsmanBot/1.0'})
    r = requests.get(f"https://www.reddit.com/r/{subreddit}/hot.json",
                     headers=headers, allow_redirects=False,
                     params={"limits": 9})
    res = r.json()
    children = res.get('data', {}).get('children')
    if not children:
        print(None)
    else:
        for child in children:
            print(child.get('data', None).get('title', None))
