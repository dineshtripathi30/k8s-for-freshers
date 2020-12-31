# Generate ca key
openssl genrsa -out ca.key 2048
# Generate ca crt
openssl req -x509 -new -nodes -key  ca.key -sha256 -subj /CN=sampleissuer.local -days 1024 -out ca.crt -extensions v3_ca -config openssl-ingress.conf
