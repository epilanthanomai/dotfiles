export P4PORT=ssl:perforce.savagebeast.com:1666
export P4USER="$USER"

# dora bash completion start
_dora_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   DORA_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _dora_completion dora
# dora bash completion end
