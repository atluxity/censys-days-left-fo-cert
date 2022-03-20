# Takes IP as argument input $1, will output cert hash seen on IP. 
curl -s -X 'GET' \
  "https://search.censys.io/api/v2/hosts/$1" \
  -H 'accept: application/json' \
  -H 'Authorization: Basic YOUR-API-AUTH-HERE' | jq .result.services[].tls.certificates.leaf_data.fingerprint | grep -v null | sort | uniq | tr -d \"
