# vim-autofix

This plugin runs linter with autofix option in the context of the current file and it's type.

## Installation

Use your favorite vim plugin tool. Here is an example for use with [pathogen](https://github.com/tpope/vim-pathogen):

    cd ~/.vim/bundle
    git clone git://github.com/zpieslak/vim-autofix.git

Also [rubocop](https://github.com/bbatsov/rubocop) and [eslint](https://github.com/eslint/eslint) should be installed.

## Usage

Given that you have opened one of the [supported files](#support),<br/>
When you run ```:Autofix``` or ```:Au```,<br/>
Then any warnings / errors (that could be fixed by linter) will automatically fixed.

This plugin is especially useful when running with [syntastic](https://github.com/scrooloose/syntastic).<br/>
I also recommend setting autoread in your vimrc (```set autoread```) to auto reload file when changed by linter.

## Support

Currently supported file types:

- Ruby files - will use [rubocop](https://github.com/bbatsov/rubocop) and run ```rubocop -a [current_file]```
- Javascript files - will use [eslint](https://github.com/eslint/eslint) and run ```eslint --fix [current_file]```
