from selenium import webdriver
from selenium.webdriver.edge.service import Service
from selenium.webdriver.edge.options import Options
from webdriver_manager.microsoft import EdgeChromiumDriverManager

edge_options = Options()
edge_options.use_chromium = True
service = Service(EdgeChromiumDriverManager().install())
py_edge = webdriver.Edge(service=service, options=edge_options)