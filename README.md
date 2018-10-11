# Network data stream transmitter and receiver

## The two programs allow to set up radio stations in a local network and transmit audio files (or any data)

### Features:
* broadcast of available transmitters' names and addresses
* connecting to a receiver by telnet
* selecting transmission to be received by a receiver in the telnet menu
* sending control messages with the numbers of missing packets
* retransmission of missing packets

#### Transmitter command line arguments:
**-a** multicast address\
**-P** data stream port\
**-C** control message port\
**-p** packet size in bytes\
**-f** packet queue size in bytes\
**-r** time in milliseconds between retransmissions of missing packets\
**-n** name of the transmitter

#### Receiver command line arguments:
**-d** address used to discover transmitters in the network\
**-C** control message port\
**-U** tcp port with a telnet interface\
**-b** buffer size for incoming data in bytes\
**-r** time in milliseconds between sending information about missing packets\
**-n** default transmitter name

#### Example usage with an mp3 file of choice in the bash scripts.
