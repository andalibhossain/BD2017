1. Download a text file from Gutenberg project and upload it from my local hard-drive to Hadoop local file system: 
andy@andy:~$ scp -P 2222 /home/andy/Desktop/input.txt root@127.0.0.1:

2.andy@andy:~/workspace/wordcount$ sudo apt install maven

3.andy@andy:~/workspace/wordcount$ mvn clean install

4.andy@andy:~$ scp -P 2222 /home/andy/workspace/wordcount/target/wordcount-0.0.1-SNAPSHOT.jar root@127.0.0.1:

5.root login:
andy@andy:~$ ssh root@127.0.0.1 -p 2222

6.[root@sandbox ~]# hadoop fs -mkdir /word

7.[root@sandbox ~]# hadoop fs -copyFromLocal input.txt /word/input.txt

8.[root@sandbox ~]# hadoop jar wordcount-0.0.1-SNAPSHOT.jar com.sandbox.wordcount.wordcount /word/input.txt /word/output/
