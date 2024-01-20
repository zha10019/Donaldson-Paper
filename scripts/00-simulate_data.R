# Load necessary libraries
library(tibble)

# Create directories if they don't exist
if (!file.exists("inputs/data")) {
  dir.create("inputs/data", recursive = TRUE)
}

# Simulate Toronto Beaches Observations dataset
set.seed(123)  

# Generate simulated data
simulated_data <- tibble(
  dataCollectionDate = seq(as.Date("2010-08-03"), as.Date("2010-08-04"), by = "1 day"),
  beachName = c("Marie Curtis Park East Beach", "Sunnyside Beach"),
  wind_speed = c(5, 5),
  windDirection = c("SW", "SW"),
  airTemp = c(31, 31),
  rain = c("Yes", "Yes"),
  rainAmount = c(NA, NA),  # Replace with appropriate values
  waterTemp = c(22.6, 21.9),
  waterFowl = c(12, 30),
  waveAction = c("LOW", "LOW"),
  waterClarity = c("Clear", "Clear"),
  turbidity = c(0.9, 0.6)
)

# Save simulated data
write.csv(simulated_data, "inputs/data/unedited_data.csv", row.names = FALSE)

# Perform some tests on the simulated data
mean_air_temp <- mean(simulated_data$airTemp)
cat("Mean Air Temperature:", mean_air_temp, "\n")

# Commit changes to Git using the terminal
cat('git add "scripts/00-simulate_data.R"\n', file = "commit_script.sh")
cat('git add "inputs/data/unedited_data.csv"\n', file = "commit_script.sh", append = TRUE)
cat('git commit -m "Simulate Toronto Beaches Observations data"\n', file = "commit_script.sh", append = TRUE)

# Run the script in the terminal
system("sh commit_script.sh")

# Remove the temporary script file
file.remove("commit_script.sh")
