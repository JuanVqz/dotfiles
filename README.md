 My dotfiles
---


# Vim
---

* El Gestor de paquetes es [Pathogen](https://github.com/tpope/vim-pathogen)
```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

execute pathogen#infect()
syntax on
filetype plugin indent on
```

```bash
cd ~/.vim/bundle

git clone https://github.com/tacahiroy/ctrlp-funky
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/Yggdroot/indentLine
git clone https://github.com/iamcco/markdown-preview.nvim
git clone https://github.com/tmhedberg/matchit
git clone https://github.com/Valloric/MatchTagAlways.git
git clone https://github.com/KeitaNakamura/neodark.vim.git
git clone https://github.com/scrooloose/nerdcommenter
git clone https://github.com/vim-syntastic/syntastic.git
git clone https://github.com/godlygeek/tabular
git clone https://github.com/tomtom/tlib_vim.git
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/vim-airline/vim-airline
git clone https://github.com/jwalton512/vim-blade
git clone https://github.com/kchmck/vim-coffee-script.git
git clone https://github.com/figitaki/vim-dune
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/airblade/vim-gitgutter
git clone https://github.com/pangloss/vim-javascript.git
git clone https://github.com/mxw/vim-jsx.git
git clone https://github.com/terryma/vim-multiple-cursors
git clone git@github.com:arnaud-lb/vim-php-namespace.git
git clone https://github.com/digitaltoad/vim-pug
git clone https://github.com/tpope/vim-rails.git
git clone https://github.com/tpope/vim-repeat.git
git clone https://github.com/vim-ruby/vim-ruby.git
git clone https://github.com/garbas/vim-snipmate.git
git clone https://github.com/LogicalBricks/vim-snippets.git
git clone https://github.com/tpope/vim-surround.git
git clone https://github.com/christoomey/vim-tmux-navigator.git
git clone https://github.com/posva/vim-vue

```


# Plugins
---

### markdown-preview
```
:call mkdp#util#install()
```


# Tmux
---

* Estilo default
* Cambie el prefix a control + a
* Recarga tmux
* Al moverse de panel cambia el color del borde
* Plugin para copiar texto [aqui](https://github.com/tmux-plugins/tmux-yank)

