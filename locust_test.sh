#!/usr/bin/env bash

locust -f locust.py --host https://mywebapp232149.azurewebsites.net/ --users 100 --spawn-rate 5