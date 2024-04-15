#!/env/bash

nvim_path="$HOME/opt/nvim/bin/nvim"

selected_file=$(find "$HOME" -type f | fzf --layout=reverse --border=rounded --height 60%)

# if [ -n "$selected_file" ]; then
#     "$nvim_path" "$selected_file"
# else
#     echo "No file selected. Exiting."
# fi
