from fabric.api import *

env.host = ["uniqueusman@10.1.4.18"]

def host_type():
    run("ls")
