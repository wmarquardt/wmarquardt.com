#!/bin/sh
set -ex
icons="github linkedin whatsapp terminal python arrow-circle-o-left arrow-circle-o-down"
dest=forkawesome
url=https://raw.githubusercontent.com/ForkAwesome/Fork-Awesome/master/src/icons/svg/
mkdir -p "${dest}"
for icon in $icons; do
  icon="${icon}.svg"
  wget -O "${dest}/${icon}" "${url}/${icon}"

  # add viewbox
  sed -i 's/^<svg.*>$/<svg viewBox="0 0 1536 1792">/g' "${dest}/${icon}"
done