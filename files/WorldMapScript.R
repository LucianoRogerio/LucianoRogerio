

library(leaflet)


LucT <- read.csv("files/LucianoTravels.csv")

m <- leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addCircles(lng = LucT$Long, lat = LucT$Lat,
             color = LucT$Color)

m
### use the export tool of Rstudio on the viewer tab at the right --->


library(tidyverse)
library(leaflet)



LocSyn <- read.table(here::here("files", "Locations.csv"), header = T, sep = ",")



m <-  leaflet() %>%
  addTiles() %>%
  addCircleMarkers(lng = LocSyn$Long, lat = LocSyn$Lat, color = LocSyn$Color,
                   label = LocSyn$Location)
m
