import os

from flask import Flask

app = Flask(__name__)


@app.route("/")
def echo():
    my_name = os.getenv('MY_NAME')
    return f"Hello, this is {my_name} and I am happy to be alive"
