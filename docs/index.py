from browser import document, alert


def echo(ev):
    alert("hello there!\n")

document["hi"].bind("click", echo)
