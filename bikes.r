library(ggplot2)
library(lubridate)
library(tidyverse)
options(scipen = 10)

# imports datasets from folder on Desktop, sets all station IDs to type char
jul20 <- read_csv("C:\\Users\\justi\\Desktop\\Coursera Capstone\\Bikes\\CSVs\\202007-divvy-tripdata.csv", 
                  col_types = cols(
                    ride_id = col_character(),
                    rideable_type = col_character(),
                    started_at = col_datetime(format = ""),
                    ended_at = col_datetime(format = ""),
                    start_station_name = col_character(),
                    start_station_id = col_character(),
                    end_station_name = col_character(),
                    end_station_id = col_character(),
                    start_lat = col_double(),
                    start_lng = col_double(),
                    end_lat = col_double(),
                    end_lng = col_double(),
                    member_casual = col_character()
                  ))

aug20 <- read_csv("C:\\Users\\justi\\Desktop\\Coursera Capstone\\Bikes\\CSVs\\202008-divvy-tripdata.csv", 
                  col_types = cols(
                    ride_id = col_character(),
                    rideable_type = col_character(),
                    started_at = col_datetime(format = ""),
                    ended_at = col_datetime(format = ""),
                    start_station_name = col_character(),
                    start_station_id = col_character(),
                    end_station_name = col_character(),
                    end_station_id = col_character(),
                    start_lat = col_double(),
                    start_lng = col_double(),
                    end_lat = col_double(),
                    end_lng = col_double(),
                    member_casual = col_character()
                  ))
sep20 <- read_csv("C:\\Users\\justi\\Desktop\\Coursera Capstone\\Bikes\\CSVs\\202009-divvy-tripdata.csv", 
                  col_types = cols(
                    ride_id = col_character(),
                    rideable_type = col_character(),
                    started_at = col_datetime(format = ""),
                    ended_at = col_datetime(format = ""),
                    start_station_name = col_character(),
                    start_station_id = col_character(),
                    end_station_name = col_character(),
                    end_station_id = col_character(),
                    start_lat = col_double(),
                    start_lng = col_double(),
                    end_lat = col_double(),
                    end_lng = col_double(),
                    member_casual = col_character()
                  ))
oct20 <- read_csv("C:\\Users\\justi\\Desktop\\Coursera Capstone\\Bikes\\CSVs\\202010-divvy-tripdata.csv", 
                  col_types = cols(
                    ride_id = col_character(),
                    rideable_type = col_character(),
                    started_at = col_datetime(format = ""),
                    ended_at = col_datetime(format = ""),
                    start_station_name = col_character(),
                    start_station_id = col_character(),
                    end_station_name = col_character(),
                    end_station_id = col_character(),
                    start_lat = col_double(),
                    start_lng = col_double(),
                    end_lat = col_double(),
                    end_lng = col_double(),
                    member_casual = col_character()
                  ))
nov20 <- read_csv("C:\\Users\\justi\\Desktop\\Coursera Capstone\\Bikes\\CSVs\\202011-divvy-tripdata.csv", 
                  col_types = cols(
                    ride_id = col_character(),
                    rideable_type = col_character(),
                    started_at = col_datetime(format = ""),
                    ended_at = col_datetime(format = ""),
                    start_station_name = col_character(),
                    start_station_id = col_character(),
                    end_station_name = col_character(),
                    end_station_id = col_character(),
                    start_lat = col_double(),
                    start_lng = col_double(),
                    end_lat = col_double(),
                    end_lng = col_double(),
                    member_casual = col_character()
                  ))
dec20 <- read_csv("C:\\Users\\justi\\Desktop\\Coursera Capstone\\Bikes\\CSVs\\202012-divvy-tripdata.csv", 
                  col_types = cols(
                    ride_id = col_character(),
                    rideable_type = col_character(),
                    started_at = col_datetime(format = ""),
                    ended_at = col_datetime(format = ""),
                    start_station_name = col_character(),
                    start_station_id = col_character(),
                    end_station_name = col_character(),
                    end_station_id = col_character(),
                    start_lat = col_double(),
                    start_lng = col_double(),
                    end_lat = col_double(),
                    end_lng = col_double(),
                    member_casual = col_character()
                  ))
jan21 <- read_csv("C:\\Users\\justi\\Desktop\\Coursera Capstone\\Bikes\\CSVs\\202101-divvy-tripdata.csv", 
                  col_types = cols(
                    ride_id = col_character(),
                    rideable_type = col_character(),
                    started_at = col_datetime(format = ""),
                    ended_at = col_datetime(format = ""),
                    start_station_name = col_character(),
                    start_station_id = col_character(),
                    end_station_name = col_character(),
                    end_station_id = col_character(),
                    start_lat = col_double(),
                    start_lng = col_double(),
                    end_lat = col_double(),
                    end_lng = col_double(),
                    member_casual = col_character()
                  ))
feb21 <- read_csv("C:\\Users\\justi\\Desktop\\Coursera Capstone\\Bikes\\CSVs\\202102-divvy-tripdata.csv", 
                  col_types = cols(
                    ride_id = col_character(),
                    rideable_type = col_character(),
                    started_at = col_datetime(format = ""),
                    ended_at = col_datetime(format = ""),
                    start_station_name = col_character(),
                    start_station_id = col_character(),
                    end_station_name = col_character(),
                    end_station_id = col_character(),
                    start_lat = col_double(),
                    start_lng = col_double(),
                    end_lat = col_double(),
                    end_lng = col_double(),
                    member_casual = col_character()
                  ))
mar21 <- read_csv("C:\\Users\\justi\\Desktop\\Coursera Capstone\\Bikes\\CSVs\\202103-divvy-tripdata.csv", 
                  col_types = cols(
                    ride_id = col_character(),
                    rideable_type = col_character(),
                    started_at = col_datetime(format = ""),
                    ended_at = col_datetime(format = ""),
                    start_station_name = col_character(),
                    start_station_id = col_character(),
                    end_station_name = col_character(),
                    end_station_id = col_character(),
                    start_lat = col_double(),
                    start_lng = col_double(),
                    end_lat = col_double(),
                    end_lng = col_double(),
                    member_casual = col_character()
                  ))
apr21 <- read_csv("C:\\Users\\justi\\Desktop\\Coursera Capstone\\Bikes\\CSVs\\202104-divvy-tripdata.csv", 
                  col_types = cols(
                    ride_id = col_character(),
                    rideable_type = col_character(),
                    started_at = col_datetime(format = ""),
                    ended_at = col_datetime(format = ""),
                    start_station_name = col_character(),
                    start_station_id = col_character(),
                    end_station_name = col_character(),
                    end_station_id = col_character(),
                    start_lat = col_double(),
                    start_lng = col_double(),
                    end_lat = col_double(),
                    end_lng = col_double(),
                    member_casual = col_character()
                  ))
may21 <- read_csv("C:\\Users\\justi\\Desktop\\Coursera Capstone\\Bikes\\CSVs\\202105-divvy-tripdata.csv", 
                  col_types = cols(
                    ride_id = col_character(),
                    rideable_type = col_character(),
                    started_at = col_datetime(format = ""),
                    ended_at = col_datetime(format = ""),
                    start_station_name = col_character(),
                    start_station_id = col_character(),
                    end_station_name = col_character(),
                    end_station_id = col_character(),
                    start_lat = col_double(),
                    start_lng = col_double(),
                    end_lat = col_double(),
                    end_lng = col_double(),
                    member_casual = col_character()
                  ))
jun21 <- read_csv("C:\\Users\\justi\\Desktop\\Coursera Capstone\\Bikes\\CSVs\\202106-divvy-tripdata.csv", 
                  col_types = cols(
                    ride_id = col_character(),
                    rideable_type = col_character(),
                    started_at = col_datetime(format = ""),
                    ended_at = col_datetime(format = ""),
                    start_station_name = col_character(),
                    start_station_id = col_character(),
                    end_station_name = col_character(),
                    end_station_id = col_character(),
                    start_lat = col_double(),
                    start_lng = col_double(),
                    end_lat = col_double(),
                    end_lng = col_double(),
                    member_casual = col_character()
                  ))

# combines all datasets into one
agg_bikes <- bind_rows(jul20,aug20,sep20,
                       oct20,nov20,dec20,
                       jan21,feb21,mar21,
                       apr21,may21,jun21)

# adds extra columns
agg_bikes <- agg_bikes %>% add_column(ride_length = 
                                        round(as.numeric(difftime(agg_bikes$ended_at, 
                                                                  agg_bikes$started_at,
                                                                  units = "mins"))))

agg_bikes <- agg_bikes %>% add_column(day_of_week = 
                                        weekdays(agg_bikes$started_at, 
                                                 abbreviate = TRUE))
agg_bikes$day_of_week <- factor(agg_bikes$day_of_week, 
                                levels= c("Sun", "Mon", 
                                          "Tue", "Wed", 
                                          "Thu", "Fri", 
                                          "Sat"))
getSeason <- function(DATES) {
  WS <- as.Date("2012-12-15", format = "%Y-%m-%d") # Winter Solstice
  SE <- as.Date("2012-3-15",  format = "%Y-%m-%d") # Spring Equinox
  SS <- as.Date("2012-6-15",  format = "%Y-%m-%d") # Summer Solstice
  FE <- as.Date("2012-9-15",  format = "%Y-%m-%d") # Fall Equinox
  
  # Convert dates from any year to 2012 dates
  d <- as.Date(strftime(DATES, format="2012-%m-%d"))
  
  ifelse (d >= WS | d < SE, "Winter",
          ifelse (d >= SE & d < SS, "Spring",
                  ifelse (d >= SS & d < FE, "Summer", "Autumn")))
}
agg_bikes <- agg_bikes %>% add_column(season = getSeason(agg_bikes$started_at))
agg_bikes$season <- factor(agg_bikes$season, 
                           levels= c("Spring", "Summer", 
                                     "Autumn", "Winter"))
getTod <- function(TIMES) {
  night <- 360
  morning <- 720
  afternoon <- 1080
  
  time_check <- hour(TIMES) * 60 + minute(TIMES)
  ifelse(time_check <= night, "Night", 
         ifelse(time_check <= morning, "Morning", 
                ifelse(time_check <= afternoon, "Afternoon", "Evening")))
}
agg_bikes <- agg_bikes %>% add_column(time_of_day = getTod(agg_bikes$started_at))
agg_bikes$time_of_day <- factor(agg_bikes$time_of_day, 
                                levels= c("Morning", "Afternoon", 
                                          "Evening", "Night"))

# data cleaning
# remove rows with duplicate ride IDs
agg_bikes <- agg_bikes[!duplicated(agg_bikes$ride_id), ]
# remove rows with negative travel time
agg_bikes <- agg_bikes[(agg_bikes$ride_length > 0), ]
# remove rows with nulls
#agg_bikes <- agg_bikes[complete.cases(agg_bikes), ]
# removes rides longer than 24 hours
agg_bikes <- agg_bikes[agg_bikes$ride_length < 1441, ]

# summary data
summ_member <- summary(select(agg_bikes[agg_bikes$member_casual == "member", ],
                              "ride_length"))
summ_casual <- summary(select(agg_bikes[agg_bikes$member_casual == "casual", ],
                              "ride_length"))
mean(agg_bikes$ride_length)
max(agg_bikes$ride_length)
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
getmode(agg_bikes$day_of_week)
c_num_dotw <- agg_bikes %>% 
  group_by(day_of_week) %>% 
  summarize(ride_id = n()) %>% 
  arrange(desc(ride_id))

c_num_mc <- agg_bikes %>% 
  group_by(member_casual) %>% 
  summarize(ride_id = n()) %>% 
  arrange(desc(ride_id))

avg_len_dotw <- aggregate(agg_bikes[14], list(agg_bikes$day_of_week), mean)
avg_len_mc <- aggregate(agg_bikes[14], list(agg_bikes$member_casual), mean)
dotw_agg_mc <- agg_bikes %>% 
  group_by(.groups = member_casual, day_of_week) %>% 
  summarize(ride_id = n()) %>% 
  arrange(desc(ride_id))

# visualize counts of each DotW
weekday_bar <- ggplot(data=agg_bikes, aes(x=day_of_week)) + 
  geom_bar(stat="count", width = 0.4)

grouped_weekday_bar <- ggplot(data=agg_bikes, aes(day_of_week, fill = member_casual)) +
  geom_bar(stat = "count", width = 0.7, position = "dodge") + 
  scale_fill_brewer(palette = "Set1") + 
  ggtitle("Number of Rides on Day of Week Grouped by Consumer Type") +
  xlab("Day of the Week") +
  ylab("Number of Rides") +
  theme(text = element_text(size = 10),
        axis.text.x = element_text(angle = 30),
        legend.key.size = unit(0.4, "cm"),
        legend.title = element_text(size = 8),
        legend.text = element_text(size = 8),
        plot.title = element_text(hjust = 0.5))

grouped_season_bar <- ggplot(data=agg_bikes, aes(season, fill = member_casual)) + 
  geom_bar(stat = "count", width = 0.7, position = "dodge") + 
  scale_fill_brewer(palette = "Set1") + 
  ggtitle("Number of Rides on Season Grouped by Consumer Type") +
  xlab("Season") +
  ylab("Number of Rides") +
  theme(text = element_text(size = 10),
        axis.text.x = element_text(angle = 30),
        legend.key.size = unit(0.4, "cm"),
        legend.title = element_text(size = 8),
        legend.text = element_text(size = 8),
        plot.title = element_text(hjust = 0.5))

grouped_tod_bar <- ggplot(data=agg_bikes, aes(time_of_day, fill = member_casual)) + 
  geom_bar(stat = "count", width = 0.7, position = "dodge") + 
  scale_fill_brewer(palette = "Set1") + 
  ggtitle("Number of Rides on Time of Day Grouped by Consumer Type") +
  xlab("Time of Day") +
  ylab("Number of Rides") +
  theme(text = element_text(size = 10),
        axis.text.x = element_text(angle = 30),
        legend.key.size = unit(0.4, "cm"),
        legend.title = element_text(size = 8),
        legend.text = element_text(size = 8),
        plot.title = element_text(hjust = 0.5))
