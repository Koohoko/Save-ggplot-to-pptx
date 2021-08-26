# options(repos=structure(c(CRAN="http://cran.us.r-project.org")))
if (!requireNamespace("officer"))
    install.packages("officer")
if (!requireNamespace("rvg"))
    install.packages("rvg")
if (!requireNamespace("magrittr"))
    install.packages("magrittr")
library(officer)
library(magrittr)

save_pptx <- function(file="tmp.pptx", width=8, height=8/sqrt(2), plot=last_plot()){
	plot <- rvg::dml(ggobj = plot)
	read_pptx() %>%
	# add slide ----
	add_slide() %>%
	# specify object and location of object ----
	ph_with(plot, ph_location(width=width, height=height)) %>%
	# export slide -----
	base::print(
		target = file
	)
}