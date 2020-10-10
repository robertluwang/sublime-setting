# Customize selection color in favorite color scheme

The current selection color is gray, it is hard to identify large amount of selection.

## how to modify color scheme

The default color scheme setting is zip file which is collection of color scheme, hard to view and edit it directly, 

`C:\<path>\sublimetext3\Packages\Color Scheme - Default.sublime-package`

after some test, found it is possible to edit one of scheme file directly using 7z, but best option seems to create new scheme under User folder, 

`C:\<path>\sublimetext3\Data\Packages\User\Monokai-dc.sublime-color-scheme`

I place this sample scheme [here](https://raw.githubusercontent.com/robertluwang/sublime-setting/master/Monokai-dc.sublime-color-scheme).

## how to find right color for scheme

When check the color scheme, the color represented as hsl string.

https://www.december.com/html/spec/colorhsl.html is prefect site to find expected hsl color string, for example green hsl(120, 61%, 50%)

I add new variable green1 as selection color in Monokai-dc.sublime-color-scheme`.
```
    "variables":
    {
...
        "green1":"hsl(120, 61%, 50%)"
    },
    "globals":
    {
...
        "selection": "var(green1)",
...}
```

## enable new color scheme 

then choice it from list by clicking Preferences/Color Scheme ... 
