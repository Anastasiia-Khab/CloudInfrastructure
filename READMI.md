### Домашнє завдання:

#### 1. Сервіс та докерфайл, або посилання на репозиторій з файлом-образом, з інструкцією як запускати 

	+Dockerfile
	
	+load_service.py
	
	+Instruction:
	
	 TOWRITE: adress..../?n=100
	  (or any other integer number. My service will sort n random integer numbers [-100,100])
	 
	 TOWRITE: adress..../livetest
	  (to check if service is live)
	  should return: TEST OK

#### 2. Скрипти YAML для завантаження в Kubernetes
	
	kube_deployment.yaml
        
	kube_service.yaml
        
	kube_autoscaling.yaml

#### 3. Bash скрипт, який інсталює сервіс в MiniKube автоматично
        
	script.sh
        
	(it uses kube_deployment.yaml;kube_service.yaml;kube_autoscaling.yaml)
	
	TOWRITE: sh script.sh

#### 4. Kubernetes Readiness check + Liveness check.
        
	the ones (livenessProbe and readinessProbe) written in kube_deployment.yaml are used
        
	also firstly I used  kube_liveness_dontneedthismore.yaml; kube_readiness_dontneedthisanymore.yaml firstly

#### 5. Bash скрипт для локального деплою в minikube (без хмарного реєстру контейнерів)
        
	script_five.sh
        
	(it uses kube_deployment_five.yaml;kube_service.yaml;kube_autoscaling.yaml)
	
	TOWRITE: sh script_five.sh

#### 7. Реалізувати Memory scaling (імітувати задачу, що потребує багато пам'яті і вирішити проблему масштабування у випадку досягнення критичного розміру по використанню пам'яті)
	
	kube_autoscaling.yaml
        
	folder metrics-server
	
	CPU scalin is also implemented
        
        
	replicas: 2
	
	minReplicas: 1
	
	maxReplicas: 4


	CPU: targetAverageUtilization: 60
	
	memory: targetAverageUtilization: 60

Скріпти написані таким чином що вони завершують роботу коли щось не виконується і виводять текст помилки.
Також sh script_five.sh напочатку видаляє всі запущені мною одиниці на kubectl

!!!!!!! У файлі cheater .txt можна прочитати більшість корисних лінків та команд які використовувала в ході виконання даного домашнього:)

!!!!!!! Правильність виконання можна також перевірити переглянувши скріни у папці images:)

На гітхабі не має папки metrics-server , вона є в архіві. Також можна її скачати самостійно:
''''
	$ git clone https://github.com/kubernetes-incubator/metrics-server.git
	$ cd metrics-server
	$ kubectl create -f deploy/1.8+/
	'''
