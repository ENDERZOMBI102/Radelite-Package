from browser import document, alert


def echo(ev):
    alert("hello there!\n"+ev)

document["hi"].bind("click", echo)
