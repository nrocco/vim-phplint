vim-phplint
===========

The vim-phplint plugin for vim allows you to check PHP files for syntax errors.

It shows all errors inside the vim `quickfix` window allowing you to browse through all errors.
You can download the plugin from github: [vim-phplint plugin](http://github.com/nrocco/vim-phplint "Vim plugin to check PHP files for syntax errors")


Installation
------------

Install the plugin using [pathogen.vim](https://github.com/tpope/vim-pathogen):

    cd ~/.vim/bundle
    git clone https://github.com/nrocco/vim-phplint.git

Or install it manually by copying the `phplint.vim` to your `~/.vim/plugin` directory.


Configuration
-------------

After installing phplint plugin you have a new vim command `Phplint` at your disposal.
For easy syntax checking you can map the `Phplint` command to a keybinding like so:

    noremap <C-l> :Phplint<CR></CR>

By putting this line in your ~/.vimrc you can check the current buffer by pressing `ctrl + l`.


License
-------

Copyright (c) Nico Di Rocco. Distributed under the same terms as Vim itself. See `:help license`.
