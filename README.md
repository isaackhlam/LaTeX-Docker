# Local LaTeX environment with docker

To run, simply

```bash
docker-compose up -d
bash script/watch.sh
```

And then edit the `src/main.tex`, the script will automatically compile when the `src/main.tex` is updated and saved.  
The intermediate files and final pdf will be inside `build/`
