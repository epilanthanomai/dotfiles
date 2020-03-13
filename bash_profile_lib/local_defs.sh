_dora_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   DORA_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _dora_completion dora
