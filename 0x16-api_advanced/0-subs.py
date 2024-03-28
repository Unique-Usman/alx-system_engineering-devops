#!/usr/bin/python3
"""
A function that queries the Reddit API and returns the number of
subscribers (not active users, total subscribers) for a gives
subreddit. If an invalid subreddit is given, the function should return 0.
"""
import requests


def number_of_subscribers(subreddit):
    """
    The function that returns the number of
    suscribers.

    Args:
        subreddit (str): The subreddit
    """
    headers = requests.utils.default_headers()
    headers.update({'User-Agent': 'UsmanBot/1.0'})
    r = requests.get(f"https://www.reddit.com/r/{subreddit}/about.json",
                     headers=headers, allow_redirects=False)
    sub = r.json().get("data", {}).get("subscribers")

    if sub:
        return sub
    return 0
