# censys-days-left-fo-cert
Lookup certificate on censys and output days left of cert validity in order to monitor that the cert setup is working

I wanted a way to ask an external party how many days was left of the TLS cert that was visible to the public.

This would help me catch if I had made a change that broke the auto-update of a Lets Encrypt cert.
It does not help to check the local cert file, it is what is displayed to the public that counts.

1. Register a free user on censys.io
2. https://search.censys.io/api#/certificates/viewCertificate - press "Try it out" and "Execute", it will show the correct basicauth for you to use.
3. Replace YOUR-API-AUTH-HERE in ip-search.sh
4. Replace YOUR-API-AUTH-HERE in cert-search.sh
5. Replace YOU-IP-HERE in days-left-of-cert.sh
6. Monitor days-left-of-cert.log .... TODO for my part. I am currently this setup
