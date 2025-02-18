#Set up symlinks for all .config files
dev_env_files="${HOME}/code/dev-environment-files"
files=(zshrc zprofile zprompt private tmux.conf wezterm.lua zshenv config tmux p10k.zsh aliases)

echo "Changing to the ${dev_env_files} directory"
cd "${dev_env_files}" || exit

for file in "${files[@]}"; do
    echo "Creating symlink to $file in home directory."
    ln -sf "${dev_env_files}/.${file}" "${HOME}/.${file}"
done

sh ./macOS.sh

sh ./brew.sh
