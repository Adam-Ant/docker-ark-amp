# ARK:Survival Evolved AMP
A dockerfile for using the ARK: Survival Evolved module of the AMP server management program, by CubeCoders.

## Environment Variables
This Dockerfile requires a CubeCoders licence, specified as the environment variable LICENCE. An example run command for this Dockerfile is:

```docker run -d -e "LICENCE=XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX" -p 8080:8080  -p 7777:7777/udp -p 7778:7778/udp -p 27015:27015/udp -p 32330:32330 -v /volumes/amp:/ampdata adamant/ark-amp```

To rebind the port the ARK:Survival Evolved server listens on, simply replace the first intance of 7777 with the new external port. Same process for all the other ports.

This dockerfile also support more environment variables to customise the ark server parameters. These are:
* **HOST** - Specifies the interface AMP and the ark server should listen on
* **PORT** - The port for the AMP webUI
* **USERNAME** - The default username for logging into the webUI
* **PASSWORD** - The default password for logging into the webUI
* **INSTANCE_NAME** - The name of the instance AMP needs to create. Should not need to be changed.

These environment variables can either be defined at runtime, as LICENCE has above, or in a file. For information on how to format and use this file, see the [Docker Docs](https://docs.docker.com/engine/reference/commandline/run/#/set-environment-variables-e-env-env-file).
