# Local LaTeX environment


## texlive distribution on Host

If you prefer install texlive distribution on the host machine, 
Either follow the official installation guide from [TexLive](https://tug.org/texlive/quickinstall.html) or from the package manger of distribution.

For Arch, `texlive` group contains most package needed.



To run, simply

```bash
docker-compose up -d
bash script/watch.sh
```

And then edit the `src/main.tex`, the script will automatically compile when the `src/main.tex` is updated and saved.  
The intermediate files and final pdf will be inside `build/`
