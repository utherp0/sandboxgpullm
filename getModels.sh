for hostService in $(oc get isvc -n sandbox-shared-models -o jsonpath='{.items[*].status.address.url}');
  curl -kL -H "Authorization: Bearer "$(oc whoami -t) $hostService/v1/models 
done
