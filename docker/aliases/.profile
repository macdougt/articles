for file in ${HOME}/.{docker_content,dm_content,dc_content,dr_content}; do
  [[ -r "$file" ]] && [[ -f "$file" ]] && source "$file"
done
