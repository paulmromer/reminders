# Configuration file for jupyter-server.

c = get_config()  #noqa

c.ServerApp.terminado_settings = {
'shell_command': 'bash --rcfile .jupyter/.bashrc'
}

c.ContentsManager.allow_hidden = True