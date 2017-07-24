> Experimental

## About

- Publishes all messages seen to `${rootTopic}/message/${from}/${to}`
- Owner sends bot commands by prefixing message with !
  - `!say Hello, world!`
  - `/msg sshowbot !say Hello, world!`
  - `!mode +o sshow`
- Bot acts on commands to `${rootTopic}/command/${command}`
- Recipients starting with `=` are channels

## Configuration

Mostly configured with environment variables.

    IRC_SERVER: "chat.freenode.net"
    BOTNAME: "sshowbot"
    HOMECHAN: "#hackeriet"
    MQTT_CNNSTRING: "mqtt://alarm:alarm@mqtt-server"
    ROOT_TOPIC: "irc/sshowbot"
    LOG_LEVEL: "silly"

## Run normally

1. Set environment
2. `npm install`
3. `npm start`

## Run with Docker

1. `docker-compose up`

This also starts a linked MQTT server container *without state*. Attach volumes
as described in <https://hub.docker.com/_/eclipse-mosquitto/> for persistent
storage.
