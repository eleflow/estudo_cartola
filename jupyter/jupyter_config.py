# Kernel config
c.IPKernelApp.pylab = 'inline'  # if you want plotting support always in your notebook
c = get_config()
c.NotebookApp.ip = '*'
c.NotebookApp.port = 8888
c.NotebookApp.open_browser = False
c.NotebookApp.token = ''
c.NotebookApp.password = u''
c.notebookApp.open_browser = True