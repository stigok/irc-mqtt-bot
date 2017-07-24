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

Mostly configured with environment variables
