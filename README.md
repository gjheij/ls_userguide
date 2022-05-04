# User guide

User guide for line-scanning fMRI at the Spinoza Centre for Neuroimaging. Mainly includes practicalities and analysis strategies. See also [the linescanning repository](https://github.com/gjheij/linescanning/tree/main) and [documentation](https://linescanning.readthedocs.io/en/latest/?badge=latest#) pages for more details on the code.

to create the pdf from the `manuscript.md` file, do:

```
version_NR=1
./create.sh ${version_NR}
```

This will generate the pdf file from md using latex/pandoc

# Install fonts

Download `otf` or `ttf`-file of desired font. Place them in `~/.fonts` or `/usr/share/fonts/truetypes`, and run `fc-list :outline -f "%{family}\n"` to get the name of the font and `sudo fc-cache -f -v` to refresh the index (if you have administration rights on your system)