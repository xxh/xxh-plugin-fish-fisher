#!/usr/bin/env fish
set_color purple
# Run fisher at startup to install any package listed in the fishfile.
if test -f $XDG_CONFIG_HOME/fish/fish_plugins
  # We found the fishfile ...
  if test ! -s $XDG_CONFIG_HOME/fish/fish_plugins
    # ... and it's not empty ...
    echo -n "Now running "
    set_color yellow
    echo -n "Fisher"
    set_color purple
    echo " to install your packages, as it appears this has not been done before."
    fisher
  end
end
set_color normal
