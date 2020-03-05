from browser import document, alert


def echo():
    alert(document["zone"].value)

document["hi"].bind("click", echo())
