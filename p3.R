library(rjson)
library(XML)

json_data <- fromJSON(file = "data.json")

html_data <- readHTMLTable("data.html")

xml_data <- xmlParse("data.xml")
xml_data <- xmlToList(xml_data)

csv_data <- read.csv("data.csv")

missing_data <- sapply(json_data, function(x) sum(is.na(x)))
missing_data <- missing_data[missing_data > 0]


outlier_data <- sapply(csv_data, function(x) sum(x < 0))
outlier_data <- outlier_data[outlier_data > 0]

json_data[is.na(json_data)] <- 0
csv_data[csv_data < 0] <- 0

# Print the data
print(json_data)
print(html_data)
print(xml_data)
print(csv_data)
