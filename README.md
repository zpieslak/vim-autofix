# vim-autofix

This plugin runs linter with autofix option in the context of the current file and it's type.

## Installation

Using vim native package system.

    mkdir -p ~/.vim/pack/plugins/start
    cd ~/.vim/pack/plugins/start
    git clone git://github.com/zpieslak/vim-autofix.git

For using with certain supported file types, the linters should be installed:
- ruby - [rubocop](https://github.com/bbatsov/rubocop)
- javascript, typescript - [eslint](https://github.com/eslint/eslint), note: eslint runs via npx, it can be changed [here](https://github.com/zpieslak/vim-autofix/blob/master/plugin/autofix.vim#L15)
- python - [autopep8](https://github.com/hhatto/autopep8)

## Usage

Given that you have opened one of the supported files,
When you run `:Autofix` or `:Au`,
Then any warnings / errors (that could be fixed by linter) will be automatically fixed.

Setting autoread in your vimrc is also recommended (`set autoread`) to auto reload file when changed by linter.
