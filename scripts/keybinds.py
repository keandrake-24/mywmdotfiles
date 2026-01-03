from pathlib import Path
from subprocess import run
config_path = Path.home() / ".config" / "sway" / "config"
with open(config_path,'r') as config_file:
    contents = config_file.read()
    contents_line_by_line = contents.split("\n")
    keybinds = ""
    print("keybinds:")
    for line in contents_line_by_line:
        if "bind" in line:
            if '#' in line:
                comment_index = line.find('#')
                line = line[:comment_index]
            if line and 'XF86' not in line: #xf86 is for laptop keybinds such as mute, audio, brightness and such and everyone already knows the keybinds
                print(line.replace("$mod","Windows"))
                keybinds += line.replace("$mod","Windows").replace("bindsym ",'') + '\n'
run(f"echo -e '{keybinds}' | rofi -dmenu -p 'here are your keybinds:'",shell=True)
