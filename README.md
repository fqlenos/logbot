
```plaintext
 _                ____          _   
| |  ___    __ _ | __ )   ___  | |_ 
| | / _ \  / _` ||  _ \  / _ \ | __|
| || (_) || (_| || |_) || (_) || |_ 
|_| \___/  \__, ||____/  \___/  \__|
           |___/      		@fqlenos

```

> Simple bash script to alert via Telegram the new system logins 

## Setup
1. git clone git@github.com:fqlenos/logbot.git  
2. Edit the __logbot/logbot.sh__ and set your Telegram Bot's TOKEN and CHAT_ID.  
3. Run __logbot.sh__  


### Running
The script can be launched with the following commands:  
```plaintext
user@hostname:~$ bash logbot.sh &
```
or  
```plaintext
user@hostname:~$ nohup bash logbot.sh &
```

### Running as service
If it is wanted to run the script as a system service, then:  
1. Edit the __logbot.service__ and set your _/paths_  
2. Move the file to _/etc/systemd/system/_ as __root__ once the previous step is done  
3. Restart and enable the service  

```plaintext
user@hostname:~$ sudo systemctl daemon-reload
user@hostname:~$ sudo systemctl start logbot.service
user@hostname:~$ sudo systemctl enable logbot.service
user@hostname:~$ sudo systemctl status logbot.service
```