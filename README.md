# Vim plugin for Nextflow workflows

Currently supports syntax highlighting of .nf scripts.

Extends (presumed-available) groovy syntax highlighting.

![screenshot](images/screenshot.png)

## Installation

### vim-plug

    Plug 'raivivek/nextflow-vim'

### Vundle

    Plugin 'raivivek/nextflow-vim'

### NeoBundle

    NeoBundle 'raivivek/nextflow-vim'

### Manual

    git clone https://github.com/raivivek/nextflow-vim ~/nextflow-vim;
    mkdir ~/.vim/ftdetect; mkdir ~/.vim/ftplugin;
    cp ~/nextflow-vim/ftdetect/nextflow.vim ~/.vim/ftdetect;
    cp ~/nextflow-vim/syntax/nextflow.vim ~/.vim/ftplugin;

## Goals

* language-specific highlighting of shell/script blocks.
* tab-completion
