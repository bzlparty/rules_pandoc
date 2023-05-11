"""Mirror of release info

TODO: generate this file from GitHub API"""

# The integrity hashes can be computed with
# shasum -b -a 384 [downloaded file] | awk '{ print $1 }' | xxd -r -p | base64
TOOL_VERSIONS = {
    "3.1.2": {
        "arm64-macOS": "sha384-x4lL0XR8AitgXnZftL+2FeWWkRrZmiQrT3pREVlPcJWu6TWki/MyyrUm3kOAIGUW",
        "linux-amd64": "sha384-7aT0WyaSLu4czAddZNvvGNqhetHgOemjjtZvQoEe4PfRnIJtOpPtWZoZEU6sOA03",
        "linux-arm64": "sha384-YBzve6BRS83/W/WAkNoWc5rkyLIjiiD8JcAu4b3YqDFdgonXH2C6MxqwGssYvHtL",
        "windows-x86_64": "sha384-VXsxk1o6P29lu5nGKTdWu1YNXbS5/oKR8oJn/afU18u5qiPAajXpGWWtAIYFYzoy",
        "x86_64-macOS": "sha384-ZbvJns5zBHgu4F1PuAGljVCV/+e4qVG7aMoNn1Twjb1GBWx9o6NtkuoKbp4EKEu6",
    },
}
