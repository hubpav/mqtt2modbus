# MQTT to Modbus Bridge

I use a PLC (CLICK series from [**AutomationDirect**](https://www.automationdirect.com/)) to control all lighting at my home. Although the PLC and the basic lighting functionality operates independently, I needed a bridge between the PLC and the embedded Linux computer for my automation tasks implemented on a higher level. This is a simple implementation of the MQTT to Modbus bridge written in C language that allows to easily control the lights using the MQTT publish commands.

## Basic Usage

**MQTT publish commands:**

    mosquitto_pub -t plc/y709/set -m true

    mosquitto_pub -t plc/y709/set -m false

    mosquitto_pub -t plc/y709/toggle -n

**MQTT publish reponses:**

    plc/y709/set/ok (null)

    plc/y709/toggle/ok (null)

## Requirements

* [**Mosquitto**](https://mosquitto.org/) - MQTT broker
* [**libmosquitto**](https://mosquitto.org/man/libmosquitto-3.html) - MQTT client library
* [**libmodbus**](http://libmodbus.org/) - Modbus library
* **GCC + Make** - GNU C Compiler and build automation tool

## Installing

> The software has been tested on **Debian 9.3 (amd64)**.

Clone the repository:

    git clone git@github.com:hubpav/mqtt2modbus.git

Go to the repository:

    cd mqtt2modbus

Build the program:

    make

## Running

> Currently the program does not take any arguments. The parameters can be adjusted in the beginning of `main.c`.

Run the program:

    ./mqtt2modbus

You can use [**PM2 process manager**](http://pm2.keymetrics.io/) to keep this program starting on the boot.

    pm2 start mqtt2modbus

## Contributing

Please read [**CONTRIBUTING.md**](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [**SemVer**](https://semver.org/) for versioning. For the versions available, see the [**tags on this repository**](https://github.com/hubpav/mqtt2modbus/tags).

## Authors

* [**Pavel Hübner**](https://github.com/hubpav) - Initial work

## License

This project is licensed under the [**MIT License**](https://opensource.org/licenses/MIT/) - see the [**LICENSE**](LICENSE) file for details.
