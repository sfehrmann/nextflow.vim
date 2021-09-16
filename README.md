# Vim plugin for Nextflow workflows

Currently supports syntax highlighting of .nf scripts.

Extends (presumed-available) groovy syntax highlighting.

![screenshot](images/screenshot.png)

## Installation

### vim-plug

    Plug 'sfehrmann/nextflow-vim'

### Vundle

    Plugin 'sfehrmann/nextflow-vim'

### NeoBundle

    NeoBundle 'sfehrmann/nextflow-vim'

### Manual

```bash
git clone https://github.com/sfehrmann/nextflow-vim ~/nextflow-vim;
mkdir ~/.vim/ftdetect; 
mkdir ~/.vim/ftplugin;
ln -s ~/nextflow-vim/ftdetect/nextflow.vim ~/.vim/ftdetect;
ln -s ~/nextflow-vim/syntax/nextflow.vim ~/.vim/ftplugin;
```
