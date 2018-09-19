# zsh

EMOJI=(🐦 🚀 🎨 🍕 🐷 🐤 🐳 🍔 💎 💜 🐓 🍄 ⌛ 🦊 🌈 🍺 📦️ 🎲 🔥 ️👩 📚 💅 👌 🍰 🌲 🦋 👍 🐺 🐾 🗻 🌋 🗾 🚣 🏛️ 🏟️ ⛩️ 🕌 🗽 🚜 🛵 ⛱️ 😈 👨 😾 💪 ⛷️ 🏇 🥊 🏓 🎸 🎧 🛍️ 🔑 🔧 🚰 🐪 🐊 ✍️ 👷🏻‍♂️ 🎉 🙌 ⏰ )

function random_emoji {
  echo -n "$EMOJI[$RANDOM%$#EMOJI+1]"
}

local ret_status="$(random_emoji) %(?:%{$fg_bold[green]%}⋊>:%{$fg_bold[red]%}⋊> )"
PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"