# Configuration and Lookup for dns

## Configurations steps:

- Create dockerfile with alpine and openrc for dns configuration to use as a service
Checkout the dockerfile

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



