# Why this value? Pandora dev-setup says it's the largest the kernel will
# allow us *shrug*
ulimit -SHn 10240

# Tell Python requests to use the system CA bundle to support local CAs
[ -r /usr/local/etc/openssl/cert.pem ] && export REQUESTS_CA_BUNDLE='/usr/local/etc/openssl/cert.pem'
