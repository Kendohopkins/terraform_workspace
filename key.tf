resource "aws_key_pair" "rr-tf" {
  key_name   = "key-tf"
  public_key = "-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEAsLKBjIovlHbui5LJ2Ic7Tea+4pVRpNkaxvUhGxju8xNNJ2rw
uDMT/e17fXfOPA2uhteamiDuxiG3ZWZvi85aJkbphsl17YVyoqK6G4xb/DNshMZE
chJ86A+VR1zpSAyUrCC3VVlYI7ZHvm8KQ4ftqzSSTYm2Dg3pLlTWDPwz3aEDcKuy
bkB85pvxe9ERM9aVC0/rbeG5v/umDeps4sE23MbJpyR4KW/mNH0benVhDnRfA1SC
YTRfOVEdgW9IAqR3Gs0E8Yz98AffvZVWbKEN+BO/hP029nWs7E1+AR+RnG0gY2pq
WiqhAkrjzNMEdwH5K+I8OsJI/A2whf6e6DjEwQIDAQABAoIBAF6/eWQo/RZ5J7TE
A2QOL6i4IIdTVjI1EHy7GQN0vTyujuKiH25GRWQWIe/HfFkLZRh9KDOZkS/BCJxg
71NiVUjNIY/bG1dABZZb97up6fE0ie4weqdIbp3pLTzU/2pZBKe/607i17Zemd3t
oO1RSApT6FeXjn2+y9jCOP1Bh3ZBaLvN1DQc/jp7aqbeQuLGXWIbdR9RhRKgnGEL
9B/HKbIsMkMls8DwanOA2+GSFPRo3CU/GRZhbA6tw9BatFOXkY7/UzU7w8D1D8aK
U2LMA7ryJvd7Fqy3P3CHpPeGNBw/BKeOqxSyr27iA88Y8Jrnz17KV3HgLxWnPUNI
fjZM3CECgYEA8QTmfzqBeM6Kty+WjSg0F9y/VArbY/p0mJ3cA7C9xpPO/Ng2vhDe
fQNfvhlweGTsHgxHRlWDWNOQuI9UURRTGRTDMgsip8R81bjN+v94gtqcZMHjnC7y
qCDB5y369OF0jH3rVTpnVx/MbsvP7T7D/Qi2hiW2T/x98mG5Hd5Lz50CgYEAu64d
lAu3Erm/R+OVhLkAkBbxC/sF9BFVssn9vCQpvtzr7/RjEBSLrMt0O3y+wMgzymIo
ReX/IPE57d5f34e8KujoV3pj6zmYwhtRJBzP6d4tZo0tlAVB+sIj27caVC+MMF5I
PQjRUWuYvD2SZekVThJYWbIX/EcQ6K5CuZd1ynUCgYEAqpyFbdrEe/f5SeNt905W
Ue35okxtMUDB+KcGb7ZVIJTRGTsUxUa7uFMDG1Z2v0LxwfN/INK3v9FDyOHtFdgF
WuPPqUUoqwn0NHY1mU/uxvJpcwmtTYoOS+WkXTm3RFG0Zx9bz2EgdhQUavnrnk2n
/x6D1kIr5EMgBMwYdoQ9tiECgYB3cjMk++fCJTGWIUQRumSfT9qN029QjI/MQD4a
tbFT5erLRvCdVVYn3TzWd2g37bL4hUw4YE7lumEyAKtn6k1Zye3FbwGUvY15TEVy
BFxW7a5bbFKruETrwQ9tULWTCsfgKME1Bx2hAies9krsTVHf5FESlQQq7VfXnsCc
ucaf2QKBgQDZJT7FgIblKCaobjrqyb2ihjAw6jAqFAUaDuDKE0DA2X/19AGlYjFg
g4tld+m+MvhdMqdKaHr1Co2a+eK1M0mEBa99JFEGTpF6mXMof7XfX+SuoafjLHda
C6IOugJ0CbruBO2s8DnQHCYmQ+6GsshB1kthZG/a+SmdINuTT81EsA==
-----END RSA PRIVATE KEY-----"

resource "tls_private_key" "rr" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_sensitive_file" "key" {
  depends_on = [tls_private_key.rr]
  content    = tls_private_key.rr.private_key_pem
  filename   = "i-key"


}
