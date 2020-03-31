#!/usr/bin/env fish
set_color purple
# Run fisher at startup to install any package listed in the fishfile.
if test -f $XDG_CONFIG_HOME/fish/fishfile
  # We found the fishfile ...
  if test -s $XDG_CONFIG_HOME/fish/fishfile
    # ... and it's not empty so run fisher to install packages.
    echo "Now running Fisher to install your packages."
    fisher
  end
end
set_color normal
