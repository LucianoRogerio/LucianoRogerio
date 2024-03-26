

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

LocSyn <- read.table(here::here("files", "LocationsSC.csv"), header = T, sep = ",")

m <-  leaflet() %>%
  addTiles() %>%
  addCircleMarkers(lng = LocSyn$Long, lat = LocSyn$Lat, color = LocSyn$Color,
                   label = LocSyn$Location)
m

LocLet <- read.table(here::here("files", "MapaLetticia.csv"), sep = ",", header = T)

head(LocLet)
m <-  leaflet() %>%
  addTiles() %>%
  addCircles(lng = LocLet$Long, lat = LocLet$Lat, color = LocLet$Color)
m
