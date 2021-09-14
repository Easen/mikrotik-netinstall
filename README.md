***NOTE: CURRENTLY WORK IN PROGRESS***



# Mikrotik NetInstall

Prepackaged docker image that has latest Mikrotik Netinstall tool installed

Please see the official docs with regards to how to run [Netinstall on Linux](https://help.mikrotik.com/docs/display/ROS/Netinstall#Netinstall-InstructionsforLinux).

## How to use

Pull down the docker image

```bash
docker pull easen/mikrotik-netinstall:[VERSION] 
```

Create a new directory


Run the docker and give it your host network and the mount the current directory to the /root folder
```bash
docker run --rm -it --network=host -v `${pwd}`:/root easen/mikrotik-netinstall:[VERSION] -a 192.168.88.1 /root/routeros-arm64-[VERSION].npk
```
