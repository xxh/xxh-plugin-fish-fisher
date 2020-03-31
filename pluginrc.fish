#!/usr/bin/env fish
set CURRENT_DIR (dirname (realpath (status current-filename)))
set_color blue

cd $CURRENT_DIR

if test -d config
  mv config .config
end

diff "$XDG_CONFIG_HOME/fish/conf.d/fisher.fish" ".config/fish/conf.d/fisher.fish" &>/dev/null
set fisherfishdiff $status

if test \( ! -e "$XDG_CONFIG_HOME/fish/functions/fisher.fish" \) -o \( ! $fisherfishdiff -eq 0 \)
  set XXH_XDG_CONFIG_HOME (dirname (echo $XDG_CONFIG_HOME))
  find ".config/" -depth -print | cpio --quiet -pd  "$XXH_XDG_CONFIG_HOME" &>/dev/null
end

set_color normal
