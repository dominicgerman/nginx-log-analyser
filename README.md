# nginx-log-analyser

## Objective

The goal of this project is to practice some basic shell scripting skills. I wrote a simple tool to analyze logs from the command line. This project is part of the DevOps project list on roadmap.sh. Here's the [project page]().

## Requirements

Create a shell script that reads an nginx log file and provides the following information:

    Top 5 IP addresses with the most requests
    Top 5 most requested paths
    Top 5 response status codes
    Top 5 user agents

Here is an example of what the output should look like:

```
Top 5 IP addresses with the most requests:
45.76.135.253 - 1000 requests
142.93.143.8 - 600 requests
178.128.94.113 - 50 requests
43.224.43.187 - 30 requests
178.128.94.113 - 20 requests

Top 5 most requested paths:
/api/v1/users - 1000 requests
/api/v1/products - 600 requests
/api/v1/orders - 50 requests
/api/v1/payments - 30 requests
/api/v1/reviews - 20 requests

Top 5 response status codes:
200 - 1000 requests
404 - 600 requests
500 - 50 requests
401 - 30 requests
304 - 20 requests
```

## Usage

To use this script, you can clone down the repo, navigate into the directory and type the following:
```bash
./nginx-log-analyser.sh </path/to/your/log/file>
```

Unless you have your own log file that you want to analyse, I would recommend using the sample log file in the project directory.

Cheers.
