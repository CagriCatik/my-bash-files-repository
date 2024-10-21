# Network and System Commands in Ubuntu

## Introduction

In this tutorial, we will continue to explore how to interact with Ubuntu using the terminal. We will cover commands for configuring network interfaces, retrieving network information, and diagnosing network connectivity.

## Reviewing Previous Concepts

In our previous session, we learned how to enter commands in the terminal and use help documentation (`-h` option or `man` pages). We also explored the `uname` command for retrieving system information.

## Configuring Network Interfaces with `ifconfig`

The `ifconfig` command is used to configure network interfaces. To understand its usage, let's look at its manual pages:

```bash
man ifconfig
```

This command will display detailed information about the options available with `ifconfig`.

### Displaying All Interfaces

To display all network interfaces, use the `-a` option:

```bash
ifconfig -a
```

This will list all network interfaces, including Ethernet (`eth0`), wireless (`wlan0`), and loopback (`lo`).

### Common Interfaces

- `eth0`: The first Ethernet interface, typically used for wired connections.
- `wlan0`: The first wireless interface.
- `lo`: The loopback interface, used by the system to communicate with itself.

### Example Usage

Run the following command to display all network interfaces:

```bash
ifconfig -a
```

You will see output similar to:

```plaintext
eth0      Link encap:Ethernet  HWaddr 00:0c:29:68:8c:aa
          inet addr:192.168.1.5  Bcast:192.168.1.255  Mask:255.255.255.0
          ...

lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          ...

wlan0     Link encap:Ethernet  HWaddr 00:0c:29:68:8c:bb
          inet addr:192.168.1.6  Bcast:192.168.1.255  Mask:255.255.255.0
          ...
```

### Default Behavior

The default behavior of `ifconfig` without any options is equivalent to using the `-a` option. Hence, the following command:

```bash
ifconfig
```

Will provide the same output as `ifconfig -a`.

### Shortened Output

To get a brief list of network interfaces, use the `-s` option:

```bash
ifconfig -s
```

### Understanding the Output

The output includes important information such as:

- **IP Address (inet addr)**: The current IP address assigned to the interface.
- **MAC Address (HWaddr)**: The hardware address of the network interface.
- **Netmask (Mask)**: Defines the network's subnet.

## Introducing `ip` Command

Ubuntu has introduced the `ip` command as a more versatile replacement for `ifconfig`. To understand its usage, we can check its help documentation:

```bash
ip -h
```

This command provides a brief overview of how to use the `ip` command and its options.

### Viewing Manual Pages

To get more detailed information, refer to the manual pages:

```bash
man ip
```

### Displaying IP Addresses

To display IP addresses assigned to all network interfaces, use:

```bash
ip addr
```

This command lists all network interfaces and their associated IP addresses.

### Example Usage

Run the following command to display detailed information about network interfaces:

```bash
ip addr
```

You will see output similar to:

```plaintext
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever

2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP qlen 1000
    link/ether 00:0c:29:68:8c:aa brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.5/24 brd 192.168.1.255 scope global dynamic eth0
       valid_lft 86397sec preferred_lft 86397sec
```

## Diagnosing Network Connectivity with `ping`

The `ping` command is used to check network connectivity by sending ICMP echo requests to a specified destination.

### Checking Help Documentation

To see the options available with the `ping` command:

```bash
ping -h
```

### Pinging a Host

To check connectivity to a host (e.g., Google), use:

```bash
ping google.com
```

This command sends continuous ping requests. To stop, press `Ctrl + C`.

### Specifying Ping Count

To limit the number of ping requests, use the `-c` option followed by the count:

```bash
ping -c 5 google.com
```

This command sends five ping requests and then stops automatically.

### Pinging Local Network Devices

You can also ping local network devices, such as your router. First, determine your IP address:

```bash
ip addr
```

Assuming your IP address is `192.168.1.5`, your router's IP is likely `192.168.1.1`. Ping your router:

```bash
ping 192.168.1.1
```

## Example Commands Summary

Here is a summary of some essential commands and their functions:

1. **Configure Network Interfaces**

   ```bash
   ifconfig -a
   ifconfig -s
   ```

2. **View IP Addresses**

   ```bash
   ip addr
   ```

3. **Check Network Connectivity**

   ```bash
   ping google.com
   ping -c 5 google.com
   ping 192.168.1.1
   ```

4. **Help and Manual Pages**

   ```bash
   ip -h
   man ip
   ```

## Conclusion

This tutorial introduced commands for configuring network interfaces, retrieving network information, and diagnosing network connectivity in Ubuntu. Mastering these commands enables efficient network management and troubleshooting. Future tutorials will delve deeper into system monitoring, process management, and advanced network configurations.
