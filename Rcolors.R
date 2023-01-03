## Make continuous colors using "brewer.pal()"
# brewer.pal() makes the color palettes from ColorBrewer available as R palettes.

library(RColorBrewer)
# makes the color palettes from ColorBrewer available as R palettes.
brewer.pal(n = 8, name = 'RdBu')

# to check the colors visually
display.brewer.pal(n = 8, name = 'RdBu')
# check all palettes
display.brewer.all(type = "all")

## Use colorRampPalette function to create colors
library(RColorBrewer)
paletteFunc <- colorRampPalette(…); # Create function
palette <- paletteFunc(n);      # invoke function to create a palette with n entries.
# or together,
colorRampPalette(…)(n)

# eg.
paletteFunc <- colorRampPalette(c('red', 'blue'));
palette <- paletteFunc(8);
barplot(1:8, col=palette);

## How to use it in ggplot2:
# scale_color_manual() or scale_fill_manual()  with color names or hex codes
p + scale_color_manual(values=c("#69b3a2", "purple", "black"))

# scale_color_brewer() or scale_fill_brewer() with existing palette names.
# discrete scale using scale_fill_brewer
p + scale_fill_brewer(palette="Dark2”)

# continuous scale using scale_fill_distiller
p + scale_fill_distiller(palette="Dark2”)
