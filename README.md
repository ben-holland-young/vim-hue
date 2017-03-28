# Control Phillips Hue lights from inside vim
### Dependencies:
---
npm install -g hue-cli

### Mappings
map <leader>lh :call ListHue()<cr>
map <leader>ho :call HueOn()<cr>
map <leader>hf :call HueOff()<cr>
map <leader>hb :call HueBrightness()<cr>
map <leader>hc :call HueColor()<cr>

