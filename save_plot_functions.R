## ggsave()
library(ggplot2)
ggsave(plot = p1,
       filename = "path/to/p1.pdf",
       height = 7,width = 7,units = "in")    

# default: 
# dpi = 300
# plot: last plot displayed
# width/height: the width/height of current plotting window


## pdf()
# library(grDevices)
pdf(file="plot.pdf", width=8, height=10, paper="letter")
p1
print(p1)
dev.off()

# width, height: the width and the height of the graphic region in inches. The default values are "7".
# paper: the target paper size. The choices are "a4", "letter", etc.
# pointsize: the default point size to be used. Strictly speaking, in bp, that is 1/72 of an inch, but approximately in points. Defaults to 12.
# Font sizes are in big points.
# fonts: font family. The default is “Helvetica”.


## convert the plot into ppt
install.packages("eoffice")
library(eoffice)

p1 <- ggplot(data=data.frame(x=1:5, y=as_factor(1:5)), aes(x,y, color=y))+ geom_point()

topptx(figure = p1, # the default is the last plot
  filename = 'path/to/filename.pptx',
  width = 6,
  height = 6,
  units = "in")
  
 
