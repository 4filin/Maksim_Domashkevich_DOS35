import os

def ping_ip(ip):
    # -n 1: отправить 1 пакет
    # -w 1000: ждать ответ 1000 миллисекунд (1 секунду)
    command = f"ping -n 1 -w 1000 {ip} > nul"
    
    return os.system(command) == 0

def check_ips(ip_list):
    with open("ping_results.txt", "w", encoding="utf-8") as file:
        for ip in ip_list:
            if ping_ip(ip):
                status = "доступен"
            else:
                status = "недоступен"
            
            result_line = f"{ip}: {status}"
            print(result_line)
            file.write(result_line + "\n")

ips = ["8.8.8.8", "1.1.1.1", "192.168.0.1", "10.0.0.1"]

# Запуск проверки
check_ips(ips)
print("Результат ping_results.txt")
