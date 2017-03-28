function! ListHue()
vnew | r ! hue lights
endfunc

function! HueOn()
let light = input("Light Name:  or lights for all")
python << EOF
import vim
light = vim.eval("light")
cmd = "vnew | r ! hue " + light + " on"
vim.command(cmd)
EOF
endfunc

function! HueOff()
let light = input("Light Name:  or lights for all")
python << EOF
import vim
light = vim.eval("light")
cmd = "vnew | r ! hue " + light + " off"
vim.command(cmd)
EOF
endfunc

function! HueBrightness()
let light = input("Light Name:  or lights for all")
let brightness = input("Brightness +-100")
python << EOF
import vim
light = vim.eval("light")
brightness = vim.eval("brightness")
cmd = "vnew | r ! hue " + light + brightness
vim.command(cmd)
EOF
endfunc


function HueColor()
let light = input("Light Name:  or lights for all")
let color = input("color: red,yellow etc, or hex value(ff0000)")
python << EOF
light = vim.eval("light")
color = vim.eval("color")
cmd = "vnew | r ! hue " + light + " " + color
vim.command(cmd)

EOF
endfunc

map <leader>lh :call ListHue()<cr>
map <leader>ho :call HueOn()<cr>
map <leader>hf :call HueOff()<cr>
map <leader>hb :call HueBrightness()<cr>
map <leader>hc :call HueColor()<cr>






