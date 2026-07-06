# inventory = {
#     "prod": {"web": ["web01", "web02"], "db": ["db01"], "back":{"back1":["back01", "back02"]} },
#     "stage": { "web": ["stage-web01"] }}

# def recurs(inventory):
#     for key, value in inventory.items():
#        if isinstance (value, dict):
#          recurs(value)
#        elif isinstance(value, list):
#         for item in value:
#            print(item) 
       
# #        print(key, value)

# recurs(inventory)

# filesystem = { "etc": { "nginx": ["nginx.conf", "mime.types"],"ssh": ["sshd_config"]},
#     "var": { "log": ["syslog", "auth.log"] }}

# def recurs(filesys, filename):
#     for key, value in filesys.items():
#        if isinstance (value, dict):
#          if recurs(value,filename):
#               return True            
#        elif isinstance(value, list):
# #        for item in value:
# #           if item == filename:
# #              return True
#          return filename in value           
# print (recurs(filesystem, "mime.types"))
# print (recurs(filesystem, "mime"))
 

def deploy(app_name, version, *servers, **options):
    print(f"Имя приложения: {app_name}")
    print(f"Версия приложения: {version}")
    for i in servers:
        print(f"Серврер: {i}")
    for k , v in options.items():
        print(f"Опция {k}: {v}")
        



deploy(
    "frontend",
    "1.4.2",
    "web01",
    "web02",
    "web03",
    restart=True,
    healthcheck=True,
    backup=False
)