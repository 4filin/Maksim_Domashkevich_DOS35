##AWS и основы работы с TerraForm

1. Регистрируем аккаунт в AWS.
      ![step1](./temp/step1.png)  
2. Подключаю CLI для возможеости управления из консоли
      ![step2](./temp/step2.png)  
3. Создаю SSH ключи для последующего доступа к создаваемым в AWS компонентам и проверяю наличие ключа в AWS UI инфраструктуре.    
      aws ec2 create-key-pair --key-name StadyAws --query 'KeyMaterial' --output text > StadyAws.pem
      
      ![step3](./temp/step3.png)        
4. Создаю Security Group и добавляю возможность коннекта к инстансу через 22 порт
      aws ec2 create-security-group --group-name MyStudyGroup --description "MyStudyGroup"
      
      ![step4](./temp/step4.png)    
      
      aws ec2 authorize-security-group-ingress --group-id sg-01f1ff2cd56a95033 --protocol tcp --port 22 --cidr 0.0.0.0/0
      
      ![step5](./temp/step5.png)
      ![step6](./temp/step6.png)      
5. Создаю VM вместе с дополнительным томом EBS и добавлением предыдущих параметров SSH и Security Group
   
      aws ec2 run-instances --image-id ami-01b91d3cd0dd501ff --count 1 --instance-type t2.micro --key-name StadyAws --security-group-ids sg-01f1ff2cd56a95033 --block-device-mappings '[{"DeviceName":"/dev/xvdf","Ebs":{"VolumeSize":5,"VolumeType":"gp2"}}]
      ![step7](./temp/step7.png)
      ![step8](./temp/step8.png)    
      ![step9](./temp/step9.png)    
      ![step10](./temp/step10.png)          
6. 
