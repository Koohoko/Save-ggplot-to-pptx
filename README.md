# Save ggplot to editable pptx file

---

## Description
The R function (`save_pptx()`) is a quick wrapper of functions from R pacakge `officer`. It can save ggplot object to vectorized editable pptx files.

## Usage
`save_pptx(file="./tmp.pptx", width=8, height=8/sqrt(2), plot=last_plot())`
The function had four arguments:
1. `file=`: output file.
2. `width=`: width of the output figure.
3. `height=`: height of the output figure.
4. `plot=`: ggplot object.

## Example
```r
source("./scripts/save_pptx.r")
library(ggplot2)

# Example
p <- ggplot() + geom_point(aes(x=1, y=1))
save_pptx(file="./results/diversity.pptx", width=5*sqrt(2), height=5, plot=p)

```

---