install.packages("leaflet")

library("leaflet")

m = leaflet()

m = addTiles(m)

## hmm - VB! 
m = addCircleMarkers(m, lng=-118.28705611599317, lat=34.032495148685626,
                     label="Home", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="green")
# Fountains
m = addCircleMarkers(m, lng=-118.28504125919468, lat=34.02515373459346,
                     label="Village f", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="blue")
m = addCircleMarkers(m, lng=-118.28647672594606, lat=34.02356337200455,
                     label="Cine f", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="blue")
m = addCircleMarkers(m, lng=-118.28557404700507, lat=34.02226072739253,
                     label="Bing f", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="blue")
m = addCircleMarkers(m, lng=-118.28514478121505, lat=34.02029281372925,
                     label="Tommy f", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="blue")
m = addCircleMarkers(m, lng=-118.28913618136181, lat=34.020535161810244,
                     label="Viterbi f", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="blue")
m = addCircleMarkers(m, lng=-118.28602347133354, lat=34.02041142866558,
                     label="RTCC f", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="blue")
# Libraries
m = addCircleMarkers(m, lng=-118.28429414812493, lat=34.02024463072921,
                     label="Doheny l", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m = addCircleMarkers(m, lng=-118.28554314450426, lat=34.01919846233526,
                     label="Accounting l", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m = addCircleMarkers(m, lng=-118.28664797366368, lat=34.019484846885675,
                     label="Bioinfo l", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m = addCircleMarkers(m, lng=-118.28799564482847, lat=34.01934694714565,
                     label="Architecture l", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m = addCircleMarkers(m, lng=-118.2888315890036, lat=34.019824701551904,
                     label="SciEng l", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m = addCircleMarkers(m, lng=-118.28275801599352, lat=34.02195867318104,
                     label="Leavey l", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")

m


