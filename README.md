RPI Ser2net DSMR
================

Serial to network proxy tailored for DSMR (Dutch Smart Meter) and Raspberry Pi,
using the ser2net package to sent the DSMR messages over your network via a TCP
socket.


Usage
-----

Since you need access to the USB0 device you can't run this in ``docker swarm`` to run this as a standalone container use:

```bash
$ docker run -d -p 3333:3333 --device=/dev/ttyUSB0:/dev/ttyUSB0 mikedingjan/rpi-ser2net-dsmr
```

To use this with docker compose, use something like the following:

```yaml
version: '3'
services:
  dsmrproxy:
    image: mikedingjan/rpi-ser2net-dsmr
  devices:
    - "/dev/ttyUSB0:/dev/ttyUSB0"
  ports:
    - "3333:3333"
```
