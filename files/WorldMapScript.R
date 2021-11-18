
library(leaflet)

LucT <- read.csv("files/LucianoTravels.csv")

m <- leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addCircles(lng = LucT$Long, lat = LucT$Lat,
             color = LucT$Color)
m

### use the export tool of Rstudio on the viewer tab at the right --->
