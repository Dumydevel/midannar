from bottle import *

import urllib.request, json

with urllib.request.urlopen("http://apis.is/petrol") as url:
    data = json.loads(url.read().decode())

@route("/")
def index():
    return template("index.tpl",data=data)

@route("/fyrirtaeki/<name>")
def company(name):
    return template("fyrirtaeki.tpl",data=data,name=name)

@route("/myndircss/<nafn>")
def staticdot(nafn):
    return static_file(nafn, root="./myndir")


@error(404)
def error404(error):
    return '<p>UmbeÃ°in sÃ­Ã°a er ekki til</p><a href="/">Mass effect</a>'


run(host='0.0.0.0', port=os.environ.get('PORT'))
