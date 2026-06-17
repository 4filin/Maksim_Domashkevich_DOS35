## Получить опыт работы с docker командами

### Запуск контейнера с использованием docker run

1. Добавляю репозиторий для docker с помощью скрипта от add_docker_rep.sh
2. Устанавливаю пакеты и проверяем статус docker
   ![step1](./temp/step1.png)
3. Заускаю контейнер Hello World 
   ![step2](./temp/step2.png)
4. Проверяю  список запущенных контейнеров или список всех контейнеров на VM
   ![step3](./temp/step3.png) 
5. Пробую запустить контейнер с дополнительными параметрами вход в контейнер после запуска  изменяем имя контейнера внутри системы и определяем направление порта       
    "docker run -it --name docker-pocket-ubuntu -p 8080:80  ubuntu:24.04"    
   ![step4](./temp/step4.png)     
6. Проверяю команды start/stop/rm/ps   
   ![step5](./temp/step5.png)    
   ![step6](./temp/step6.png)
   ![step7](./temp/step7.png)

7. Провверяю работу команды docker images 
   ![step8](./temp/step8.png)
8. Провверяю работу команды docker inspect
   ![step9](./temp/step9.png)
   Проверяю размеры по слоям 
   ![step10](./temp/step10.png)

9. Очищаю ненужные данные docker system prune
   ![step11](./temp/step11.png)       