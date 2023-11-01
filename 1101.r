flights = readRDS("data/flights.rds")

data2 <- list(
  meta = list(
    name="航空公司統一代碼",
    source_link ="https://data.gov.tw/dataset/8088"
  ),
  file = "data/airlines.json"
)

flights$data[[2]] <- data2

airlines <-
  jsonlite::fromJSON(
    flights$data[[2]][["file"]]
  )

flights$data[[2]][["data_frame"]] <- airlines

dplyr::glimpse(airlines)

dplyr::left_join(
  flightsData, airlines,
  by="AirlineID"
) -> flightsData

airportr::airports -> airports

airports$Country == "Taiwan"

airports[pick_taiwan, ] |>View

c(2, 4, 7)[c(T, F, T)]

dplyr::filter(
  airports,
  Country == "Taiwan"
) -> airports_taiwan
taiwan_IATA <- unique(airports_taiwan$IATA)

pick_departure <- flightsData$DepartureAirportID %in% taiwan_IATA
head(pick_departure)
flightsData[pick_departure, ] |> View()

which(pick_departure) |> head(10)

whichIsDeparture <- which(pick_departure)
flightsData[whichIsDeparture, ]

flights$data[[3]] <- list(
  departure_flightsData= departure_flightsData,
  arrival_flightsData = arrival_flightsData
)

#
flightsData <- readRDS("data/week8/flightsData_week8.rds")
