$ttl 86400
@   IN   SOA ns.master.com. hostmaster.master.com.(
    202 ; semi-colon starts comment Serial
    600 ; Refresh
    3600 ; Retry
    12378237) ; Expire

@   IN  NS ns.name.com. 
ns  IN  A   127.0.0.1
