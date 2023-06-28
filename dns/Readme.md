# Configuration and Lookup for dns

## Configurations steps:

- Create dockerfile with alpine and openrc for dns configuration to use as a service
Checkout the dockerfile

- OpenRC is an init system in linux. 
An init system is the first program, other than the kernel, to be run after a Linux distribution is booted. It is a daemon process that continues running until the system is shut down

- named.conf
the configuration for domain which will be mapped in service of dock-compose
```
zone "master.com" IN {
    type master;
    file "/etc/bind/zone/master.com";
};
```

- master.com settings
the file should end with a new line character
SOA == Start of auth with domain name
```
$ttl 86400
@   IN   SOA ns.master.com. hostmaster.master.com.(
    202 ; semi-colon starts comment Serial
    600 ; Refresh
    3600 ; Retry
    12378237) ; Expire

@   IN  NS ns.name.com. 
ns  IN  A   127.0.0.1

```

- Name Server lookup cmd to check the hostname's ip in container shell
After the necessary settings are set with zone for dns hit below 
```
nslookup ns.master.com 
```
To dig up more detail
```
dig @127.0.0.11 ns.master.com
```

While running those above commands it didn't respond with expected output.
when running below command in dns container it displayed it was stopped 
```
service named status
```

And when trying to start the system it responded with permission denied which brings us to guess of needing the sudo or root access for setting things up while running the dns setup


