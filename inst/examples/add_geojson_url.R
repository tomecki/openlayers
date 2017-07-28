library(openlayers)

geojson_url <- 'https://openlayers.org/en/v4.2.0/examples/data/geojson/countries.geojson'

colors <- substr(rainbow(178), 1, 7)

map <- ol() %>%
  add_stamen_tiles() %>%
  add_geojson(filename = geojson_url,
              style = fill_style(colors),
              opacity = 0.5) %>%
  add_mouse_position() #%>% add_stamen_tiles("terrain-labels")

map

map %>% add_overview_map(collapsed = FALSE) #%>% add_stamen_tiles("terrain-labels")