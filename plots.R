#Type of plots - scatter plots, line plots, bar plots, histograms,
#box-plots

#geom_point -> scatter plot!
#geom_line -> line plot!

library(gapminder)
library(dplyr)
library(ggplot2)

#1. line plot
by_year <- gapminder %>%
  group_by(year) %>%
  summarize(medianGdpPercap = median(gdpPercap))

ggplot(by_year, aes(x = year, y = medianGdpPercap)) + geom_line() +
  expand_limits(y=0)

by_year_continent <- gapminder %>%
  group_by(year, continent) %>%
  summarize(medianGdpPercap = median(gdpPercap))

ggplot(by_year_continent, aes(x=year, y=medianGdpPercap,
    color = continent)) + geom_line() + expand_limits(y=0)

#2. bar plots
#geom_col
by_continent <- gapminder %>%
  filter(year == 1957) %>%
  group_by(continent) %>%
  summarize(medianGdpPercap = median(gdpPercap))

packageVersion('ggplot2')

#ggplot(by_continent, aes(x=continent, y= medianGdpPercap)) +
#geom_col()
ggplot(by_continent, aes(continent, medianGdpPercap)) +
  geom_bar(stat='identity')

#SUPER CODE!!! (or count(continent))
countries <- gapminder %>%
  filter(year == 2007) %>%
  group_by(continent) %>%
  summarise(count_countries = n())

countries_plot <- ggplot(countries, aes(continent,count_countries)) +
  geom_bar(stat='identity')
countries_plot
  
europe_2007 <- gapminder %>%
  filter(continent == "Europe", year == 2007)

ggplot(europe_2007, aes(x=country, y=gdpPercap)) +
  geom_bar(stat="identity")

#3. histograms
# cool for examining the distribution of a numeric var

gap_1952 <- gapminder %>%
  filter(year == 1952)

ggplot(gap_1952, aes(pop)) + geom_histogram()

#log scale
ggplot(gap_1952, aes(pop)) + geom_histogram() + scale_x_log10()

#4.box plots + TITLE
ggplot(gap_1952, aes(continent, gdpPercap)) + geom_boxplot() +
  scale_y_log10() + ggtitle("GDP")
