### Применение Boto3 для управления сервисами AWS

1. Проверяю подключение к AWS CLI 
      ![step1](./temp/step1.png)
2. Устанавливаю boto3 библиотеку для Python
      ![step2](./temp/step2.png)
3. Запускаю файл s3boto.py для создания S3 бакета и проверяю наличие в портале AWS.
      ![step3](./temp/step3.png)
      ![step4](./temp/step4.png)
4. Создаю файл на серверре и добавляю код для переноса файла с локального сервера на бакет
      ![step5](./temp/step5.png)
      ![step6](./temp/step6.png)   
5. Проверяю текущие права доступа для файла 
      ![step7](./temp/step7.png)
6. Добавляю в новые ACL настройки для файла в код скрипта 
 (PS: AWS в современных бакетах отключает ACL по умолчанию, заменяя их на политики IAM/Bucket Policies)
      ![step8](./temp/step8.png)
7. Cкачиваю c через CLI файл с AWS бакета.
      ![step9](./temp/step9.png)         
8. Удаляю файлы и бакет с AWS 
      ![step10](./temp/step10.png)    
      ![step11](./temp/step11.png)    
