import os


def setup_plutoserver():
    mydir = os.path.dirname(os.path.realpath(__file__))
    iconpath = os.path.join(mydir, "icons", "pluto-logo.svg")
    return {
        "command": ["/bin/bash", "runpluto.sh", "{port}"],
        "timeout": 60,
        "launcher_entry": {"title": "Pluto.jl", "icon_path": iconpath},
    }

# note - I deleted this:
# "command": ["/bin/bash", "/home/jovyan/runpluto.sh", "{port}"]
