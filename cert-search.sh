# For use with a pipe, assumes cert hash input after ip-search.sh
read line
curl -s -X 'GET' \
  "https://search.censys.io/api/v1/view/certificates/$line" \
  -H 'accept: application/json' \
  -H 'Authorization: Basic YOUR-API-AUTH-HERE'
