from browser import document, alert


def echo():
    alert("hello there!")

document["hi"].bind("click", echo())
