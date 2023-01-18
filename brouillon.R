noms = c("", "flat (plan)", "peak (sommet)", "ridge (crête)", 
         "shoulder (haut de versant", "spur (eperon)", "slope (pente)", 
         "hollow (creux de versant)", "footslope (bas de versant)", 
         "valley (talweg)", "depression (dépression)")
couleurs = c("#ffffffff",
             "#dcdcdc", 
             "#380000", 
             "#c80000", 
             "#ff5014", 
             "#fad23c", 
             "#ffff3c", 
             "#b4e614", 
             "#3cfa96", 
             "#0000ff", 
             "#000038")


library(terra)
library(tmap)
library(raster)
# Cartographie du Ribérot
# Chargement du raster des geomorphons du Ribérot

geom_riberot <- rast("data_processed/geomorphons_Riberot.tif")
colortable(geom_riberot)
levels(geom_riberot)
plot(geom_riberot)
tm_shape(geom_riberot) + 
  tm_raster(style= "cat",
            labels = noms,
            palette = couleurs,
            title="Geomorphons du Ribérot") + 
  tm_compass(type = "4star", size = 1, position = c("right", "top")) +
  tm_scale_bar(breaks = 1) +
  tm_layout(legend.outside = T)
