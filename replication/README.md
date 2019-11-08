# redis replication

2 instances with simple replication, 1 master and 1 replica. Replica is read-only.

## usage:

1. run the containers:
	```sh
	$ make run
	```

1. open 2 consoles and test with `redis-cli`:
	![image](https://user-images.githubusercontent.com/4842605/68474340-dc282f80-0203-11ea-87ea-ffab303fdfcb.png)
