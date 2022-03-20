# For setup in crontab. Will output date and days left in a log file for future monitoring and alerting. Not gotten that far yet. 
echo $(date +%F) $(($(($(($(($(date -d $(./ip-search.sh YOUR-IP-HERE | ./cert-search.sh | jq .parsed.validity.end | tr -d \") +%s) - $(date +%s)))/60))/60))/24)) >> days-left-of-cert.log
