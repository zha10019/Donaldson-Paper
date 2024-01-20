# Load necessary libraries
library(jsonlite)
library(tibble)
library(rjson)

# Path to the locally saved JSON file
local_json_file <- "C:/Users/chris/Downloads/toronto-beaches-observations.json"

# Load the JSON data
data_info <- fromJSON(local_json_file)
resources <- data_info$result$resources

# Find the CSV resource URL
csv_url <- subset(resources, format == "CSV")$url

# Download the CSV data
beaches_data <- read.csv(url(csv_url))

# Save the downloaded data
if (!dir.exists("inputs/data")) {
  dir.create("inputs/data", recursive = TRUE)
}

write.csv(beaches_data, "inputs/data/unedited_data.csv", row.names = FALSE)

# Commit changes to Git using the terminal
cat('git add "scripts/01-download_data.R"\n', file = "commit_script.sh")
cat('git add "inputs/data/unedited_data.csv"\n', file = "commit_script.sh", append = TRUE)
cat('git commit -m "Download Toronto Beaches Observations data"\n', file = "commit_script.sh", append = TRUE)

# Run the script in the terminal
system("sh commit_script.sh")

# Remove the temporary script file
file.remove("commit_script.sh")
