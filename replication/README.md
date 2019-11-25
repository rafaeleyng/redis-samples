# redis replication

2 instances with simple replication, 1 master and 1 replica. Replica is read-only.

## usage:

1. run the containers:
	```sh
	$ make run
	```

1. open 2 consoles and test with `redis-cli`:
	![redis replication](https://user-images.githubusercontent.com/4842605/69571853-b0e26600-0fa1-11ea-922a-646d70068a1b.png)
