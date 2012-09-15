let mapleader = ","

" ------- Pathogen stuff --------
filetype plugin indent on " load filetype plugins/indent settings
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


set nocompatible 
syntax on;

runtime! init/**.vim
