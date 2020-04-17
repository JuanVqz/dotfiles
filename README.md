## My dotfiles

# Vim

---

El Gestor de paquetes es [vim-plug](https://github.com/junegunn/vim-plug)

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

```bash
cd ~/.vim/plugged

call plug#begin('~/.vim/plugged')
  Plug 'dense-analysis/ale'
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
  Plug 'vim-airline/vim-airline'
  Plug 'iamcco/markdown-preview.vim'
  Plug 'kien/ctrlp.vim'
  Plug 'pbrisbin/vim-mkdir'
  Plug 'mattn/emmet-vim'
  Plug 'Yggdroot/indentLine'
  Plug 'tmhedberg/matchit'
  Plug 'Valloric/MatchTagAlways'
  Plug 'scrooloose/nerdcommenter'
  Plug 'godlygeek/tabular'
  Plug 'altercation/vim-colors-solarized'
  Plug 'figitaki/vim-dune'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'posva/vim-vue'
call plug#end()
```

# Tmux

---

- Estilo default
- Cambie el prefix a control + a
- Recarga tmux
- Al moverse de panel cambia el color del borde
- Plugin para copiar texto [aqui](https://github.com/tmux-plugins/tmux-yank)

# Setup MacOs

---

[Spectable](https://www.spectacleapp.com/)

