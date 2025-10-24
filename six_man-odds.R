library(dplyr) # for data wrangling
library(jsonlite) # for getting data

# get today's date
today <- Sys.Date()

# ensure data output folder exists
if (!dir.exists("data")) dir.create("data")

# url for getting soy odds from rotowire
url <- "https://www.rotowire.com/betting/nba/tables/player-futures.php?future=Sixth%20Man"

# get data
result <- fromJSON(txt = url)

# add today's date as a column
df <- result %>%
  mutate(date = today)

# write dataframe to .csv in a folder called "data/"
write.csv(df, paste0("data/sixMan_odds_", gsub("-", "_", today), ".csv"), row.names = F)





