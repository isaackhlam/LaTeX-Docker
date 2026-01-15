# Local LaTeX environment

This repo is to setup an environment to compile LaTeX on local machine quickly.

## TeXLive distribution on host

If you prefer install texlive distribution on the host machine, 
Either follow the official installation guide from [TeXLive](https://tug.org/texlive/quickinstall.html) or from the package manger of distribution.

For Arch, `texlive` group contains most package needed.

### Vim Integration

Install [VimTeX](https://github.com/lervag/vimtex) with plugin manager  
For vim-plug:

```
Plug 'lervag/vimtex'
```

To setup quickly, follow the guide written by @ejmastnak: [Getting started with the VimTeX plugin](https://ejmastnak.com/tutorials/vim-latex/vimtex/)

For forward / inverse search, a pdf reader is needed, `zathura` is a good starting point.  
In Arch, install `zathura` and `zathura-pdf-mupdf` package.  Install `xdotool` as well if using X11.  
And add the following configuration in Vim.

```
let g:vimtex_view_method = 'zathura'
```

Replace `zathura` with `zathura_simple` if using Wayland (See [PR #2639](https://github.com/lervag/vimtex/pull/2639) for details).

Then everything should working fine. Edit the source file in `src/main.tex` and `\ll` in Vim, the compiled pdf will be in `build/`.

## TeXLive distribution in docker

The docker distribution will not be slimmer than install on host. (See [Issue #2341](https://github.com/lervag/vimtex/issues/2341)).  
But if you prefer this way, simply

```bash
docker-compose up -d
bash script/watch.sh
```

And then edit the `src/main.tex`, the script will automatically compile when the `src/main.tex` is updated and saved.  
The intermediate files and final pdf will be inside `build/`
