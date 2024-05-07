#!/usr/bin/python3
"""
The number of subscribers for a given subreddit
"""

import requests

def number_of_subscribers(subreddit):
    """
    Function that queries the Reddit API and returns the number of subscribers
    (not active users, total subscribers) for a given subreddit.
    """

    if not subreddit or not isinstance(subreddit, str):
        return 0

    url = f'https://www.reddit.com/r/{subreddit}/about.json'
    headers = {'User-Agent': 'MyBot/1.0'}  # Use a custom User-Agent string

    try:
        response = requests.get(url, headers=headers)

        if response.ok:
            results = response.json()
            subscribers = results['data']['subscribers']
            return subscribers
        else:
            response.raise_for_status()  # Raise HTTPError for unsuccessful response

    except requests.RequestException as e:
        print(f"Error occurred: {e}")
        return 0

# Example usage:
if __name__ == '__main__':
    subreddit_name = 'python'  # Replace with desired subreddit name
    num_subscribers = number_of_subscribers(subreddit_name)
    print(f"Number of subscribers in r/{subreddit_name}: {num_subscribers}")
