# MQTT to Modbus Bridge

I use PLC (CLICK series from AutomationDirect) to control all lighting at home. Although the PLC and the basic lighting functionality operates independently, I needed a bridge between the PLC and the embedded Linux computer for my automation tasks implemented on higher level. This is a simple implementation of the MQTT protocol and Modbus written in C language that allows to easily control the lights using MQTT publish commands.

## Basic Usage

**Publish commands:**

    mosquitto_pub -t plc/y709/set -m true
    mosquitto_pub -t plc/y709/set -m false
    mosquitto_pub -t plc/y709/toggle -n

## Requirements

* [libmodbus](http://libmodbus.org/) - Modbus library
* [libmosquitto](https://mosquitto.org/man/libmosquitto-3.html) - MQTT client library
* GCC + Make

## Installing

The software has been tested on Debian 9.3 (amd64).

    make

You can use PM2 process mana


## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT/) - see the [LICENSE](LICENSE) file for details.

## Authors

* **Pavel Hübner** - [**@hubpav**](https://github.com/hubpav)