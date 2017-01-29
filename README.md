> Experimental

## Usage

### With docker-compose

1. Read the source for the binaries
2. Set environment variables as specified in `docker-compose.yml`
3. Run `docker-compose up -d` to build and run the image in a new container

### How it works

1. Connection to an MQTT server is established
2. Connection to an IRC server is established
3. (Some) IRC events are published to the message queue
4. The bot is subscribed to events it want to act on
5. The bot publishes events back into the queue to send messages and commands
   back to the IRC server

### Included binaries
#### irc-mqtt

Connects to IRC and publishes messages in `HOMECHAN` to MQTT server on topics
under `BOTNAME`/#. Also subsribes to bot events to push messages back to the IRC
server.

#### mqttdump

Dumps all messages received on the bot topic (`${process.env.BOTNAME}/#`).
Handy for debugging inside a running container.

    docker exec $CONTAINER_NAME mqttdump

#### mqtt-cli

Send custom messages on a sub-topic of the bot

    docker exec -it $CONTAINER_NAME mqtt-cli

#### healthcheck

The healthcheck for the Docker container is performed by making the bot send a
private message to itself, all of which it answers with a `PONG`. This verifies
the connection to IRC is still up. However, it is not checking the status of the
MQTT connection as the usual problem is that the IRC connection goes down.
