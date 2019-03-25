#!/usr/bin/env python3
import time
import random
from flask import Flask, request
app = Flask(__name__)

@app.route('/')
def highload_probe():
    n = int(request.args.get('n', ''))
    start=-100
    end=100
    arr=[]
    for j in range(n): 
        arr.append(random.randint(start, end)) 
    for i in range(n):
        cursor = arr[i]
        pos = i  
        while pos > 0 and arr[pos - 1] > cursor:
            # Swap the number down the list
            arr[pos] = arr[pos - 1]
            pos = pos - 1
        # Break and do the final swap
        arr[pos] = cursor
    return ', '.join(map(str, arr))

@app.route("/livetest")
def livetest():
    return "TEST OK"


if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0')
