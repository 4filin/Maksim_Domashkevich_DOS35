import os
from jinja2 import Environment, FileSystemLoader


folder = os.path.dirname(os.path.abspath(__file__))


env = Environment(loader=FileSystemLoader(folder))


template = env.get_template('temp.html')


users = [
    {"name": "Анна", "email": "anna@example.com"},
    {"name": "Павел", "email": "pavel@example.com"},
    {"name": "Екатерина", "email": "ekaterina@example.com"}
]
#Рендер
rendered_html = template.render(users=users)

print(rendered_html)