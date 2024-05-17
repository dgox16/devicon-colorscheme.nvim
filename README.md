# DevIcon Colorscheme

DevIcon-Colorscheme allows you to change the color of the original devicons and use any color you like on them.

After developing my own colorscheme, I noticed that the devicons [devicons](https://github.com/nvim-tree/nvim-web-devicons) always kept the same color. I am aware that the colors represent the brand of the product, but I want to have a uniform look!

## 📷 Preview

![imgonline-com-ua-twotoone-bILW1MdncS1lQz](https://github.com/dgox16/devicon-colorscheme.nvim/assets/90411765/6ce07723-2bac-4116-ac8e-fc244bdf46da)

## 📦 Installation

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
    "dgox16/devicon-colorscheme.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = true
}
```

## ⚙️ Configuration

The pluing will use the default values unless you change the default configurati:

```lua
colors = {
    blue = "#0000ff",
    cyan = "#00ffe6",
    green = "#00ff00",
    magenta = "#ff00ff",
    orange = "#ff8000",
    purple = "#6e00ff",
    red = "#ff0000",
    white = "#ffffff",
    yellow = "#ffff00",
    bright_blue = "#00a1ff",
    bright_cyan = "#00ffe6",
    bright_green = "#00ff00",
    bright_magenta = "#ff00ff",
    bright_orange = "#ff8000",
    bright_purple = "#6e00ff",
    bright_red = "#ff0000",
    bright_yellow = "#ffff00",
},
```

To change one of the default colors, you need to pass a table with the new hexadecimal colors to the setup function. Check the example where I set the colors from my [Oldworld.nvim](https://github.com/dgox16/oldworld.nvim) colorscheme:

```lua
require("devicon-colorscheme").setup({
    colors = {
        blue = "#92a2d5",
        cyan = "#85b5ba",
        green = "#90b99f",
        magenta = "#e29eca",
        orange = "#f5a191",
        purple = "#aca1cf",
        red = "#ea83a5",
        white = "#c9c7cd",
        yellow = "#e6b99d",
        bright_blue = "#a6b6e9",
        bright_cyan = "#99c9ce",
        bright_green = "#9dc6ac",
        bright_magenta = "#ecaad6",
        bright_orange = "#ffae9f",
        bright_purple = "#b9aeda",
        bright_red = "#f591b2",
        bright_yellow = "#f0c5a9",
    },
})
```

## 🔥 Contributing

Due to the purpose of the plugin and the number of icons to group, I would like people to add the icons they use in their projects to each of the groups, so we will soon have all the icons in our color scheme. I am completely open to adding new functionalities.

## 🎙️ Acknowledgements

-   [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) Obviously, due to the gigantic task of adding all the icons to our Neovim.
