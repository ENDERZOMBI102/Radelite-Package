from browser import document, alert


def echo(e):
    alert("hello there!\n"+e)

document["hi"].bind("click", echo)
