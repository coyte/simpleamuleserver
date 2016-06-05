SimpleAmuleServer
=================
 
Simple Ubuntu based amule daemon server with amuleweb.

This is a bare bones amule daemon and we server.

## To run a simple server

  ```
docker run -d \
-p "4662:4662" \
-p "4665:4665/udp" \
-p "50000:50000" \
-p "50001:50001" \
-p "1080:1080" \
-p "4711:4711" \
-p "4712:4712" \
--name amule \
neiltheblue/simpleamuleserver
  ```
## Service ports (to avoid lowid)

The default ports are exposed:
`4662 4665/udp 50000 50001 1080 4712 4711`

If you need to change the service ports then add the docker `--expose` option to add them.

## Shared folders

If you would like to access the amule files outside of the service, just mount volumes in place of the `Temp` and `Incoming`. Also to save the amule configuration outside of the service also mount the `.aMule` directory:

```
docker run -d \
-p "4662:4662" \
-p "4665:4665/udp" \
-p "50000:50000" \
-p "50001:50001" \
-p "1080:1080" \
-p "4711:4711" \
-p "4712:4712" \
--name amule \
-v "/<local>/.aMule:/root/.aMule" \
-v "/<local>/Temp:/root/.aMule/Temp" \
-v "/<local>/Incoming:/root/.aMule/Incoming" \
neiltheblue/simpleamuleserver
```
