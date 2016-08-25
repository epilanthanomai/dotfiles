# cygwin doesn't start our ssh-agent for us. do that.
SSH_AGENT=/usr/bin/ssh-agent
if [ -z "$SSH_AUTH_SOCK" -a -x "$SSH_AGENT" ]; then
  eval `$SSH_AGENT -s`
  trap "kill $SSH_AGENT_PID" 0
fi
