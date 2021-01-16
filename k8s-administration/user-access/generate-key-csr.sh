# generate  key
openssl genrsa -out dinesh.key 2048
openssl req -new -key dinesh.key -out dinesh.csr
