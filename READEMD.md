
nodejs의 cluster 기능을 사용하면 호스트의 cpu core수만큼 프로세스를 확장시켜 싱글스레드의 단점을 보완할수 있다.

그러면 docker의 사용가능 cpu를 호스트의 최대한으로 설정한 후 swarm을 이용하여 한 호스트에서 cluster가 적용된 nodejs 앱을 2개 구동시킨다면 어떻게될까?

예상: 

4코어 cpu에서 8개의 worker가 작동하여 에러가날것이다.

결과: 

아무런 문제가 없이 잘돌아간다.
cpu 코어수와 프로세스 최대실행수랑 같지 않다. 
ulimit -u 실행시킨다면 프로세스 최대 실행수를 알수 있다.

tes_node.2.keyd8ho8ksni@docker-desktop    | Master 6 is running
tes_node.2.keyd8ho8ksni@docker-desktop    | worker 13 is running
tes_node.2.keyd8ho8ksni@docker-desktop    | worker 14 is running
tes_node.2.keyd8ho8ksni@docker-desktop    | worker 20 is running
tes_node.1.myczh80008ju@docker-desktop    | Master 7 is running
tes_node.2.keyd8ho8ksni@docker-desktop    | worker 26 is running
tes_node.1.myczh80008ju@docker-desktop    | worker 17 is running
tes_node.1.myczh80008ju@docker-desktop    | worker 14 is running
tes_node.1.myczh80008ju@docker-desktop    | worker 15 is running
tes_node.1.myczh80008ju@docker-desktop    | worker 16 is running
