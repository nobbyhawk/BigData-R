# dyplyr


# Packages ----------------------------------------------------------------
if(!require("readr")) install.packages("readr")
if(!require("dplyr")) install.packages("dplyr")


# Explore  ----------------------------------------------------------

android <- read_csv(file = "android_data_sample.csv", n_max = 500)
head(android) ## See first 6 rows
tail(android) ## See last 6 rows


names(android) ## See every column name

str(android) ## Info for every column
             ## Name of column, type of data, and sample values
             ## colName   : dataType   sampleData.......

summary(android) ## Summary statistics for every column
                 ## Min, Quartiles, Mean, and Max values
                 ## Categorical columns return class counts

hist(android$download_kbps) ##histogram of numerical column

boxplot(android$download_kbps) ##boxplot of same column

plot(android$download_kbps, android$upload_kbps) #scatter plot

glimpse(android) ## Better than str()


# Arrange -----------------------------------------------------------------
# Sorts table in ascending order

android <- dplyr::arrange(android, download_kbps) ##ascending order
head(android$download_kbps, n=30)

android <- dplyr::arrange(android, desc(download_kbps)) ##ascending order
head(android$download_kbps, n=30)


# Mutate ------------------------------------------------------------------

# Adds new columns!

#Difference in download and upload speed
android <- dplyr::mutate(android, newCol = download_kbps - upload_kbps)
head(android$newCol)



# Filter ------------------------------------------------------------------

# Selects variables that match your condition

# We only want observations from the US
android <- dplyr::filter(android, client_country_code == "US")



# Group By ----------------------------------------------------------------

# Organizes table by common values

# Average download/upload from certain devices
android <- dplyr::group_by(android, device)

dplyr::summarise(android, download = mean(download_kbps), upload = mean(upload_kbps))

#But how many devices are in each category?
dplyr::summarise(android, n = n()) # Answer: not many





