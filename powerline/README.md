# Powerline setup on .bashrc

```
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  source /usr/share/powerline/bindings/bash/powerline.sh
fi
```

## Requirements
- [powerline-status](https://github.com/powerline/powerline)
- (Optional) [powerline-gitstatus](https://github.com/jaspernbrouwer/powerline-gitstatus)

## Installation

Merge this folder with `~/.config/powerline`. You will need to set `colorscheme` to `ANSI` under `config.json` for any extensions you wish to activate it on. For example, for shell use:

```
{
	"ext": {
		"shell": {
			"colorscheme": "ANSI"
		}
	}
}
```

**If you aren't using gitstatus:** I believe you will have to remove the related lines from `colors.json`. This should be relatively straightforward, and i have left a linebreak to seperate them in the file.
