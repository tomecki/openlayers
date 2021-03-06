library(openlayers)

geojson_url <- 'https://openlayers.org/en/v4.6.4/examples/data/geojson/countries.geojson'

colors <- substr(rainbow(178), 1, 7)

map <- ol(options = ol_options(debug = TRUE)) %>%
  add_stamen_tiles() %>%
  add_geojson(filename = geojson_url,
              style = fill_style(colors),
              options = layer_options(opacity = 0.5)) %>%
  add_mouse_position() %>%
  add_select(display_properties = TRUE) #%>% add_stamen_tiles("terrain-labels")

map

map %>% add_overview_map(collapsed = FALSE) #%>% add_stamen_tiles("terrain-labels")

