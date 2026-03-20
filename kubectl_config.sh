alias kget='kubectl get'
alias kdes='kubectl describe'
alias klogs='kubectl logs'
alias kdel='kubectl delete'
alias kexec='kubectl exec'

function kcon() {
  kubectl config view -o json | jq --arg current_context "$(kubectl config current-context)" '.contexts | .[] | if .name == ($current_context) then {current_context: .name, current_namespace: .context.namespace} else empty end'
}

# If given an arg, set the current namespace to that. Otherwise, display the current namespace
function kns() {
  if [ $# -eq 0 ]; then
    kubectl config view -o json | jq --arg current_context "$(kubectl config current-context)" '.contexts | .[] | if .name == ($current_context) then .context.namespace else empty end'
  else
    kubectl config set-context $(kubectl config current-context) --namespace=$1
  fi
}
