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
