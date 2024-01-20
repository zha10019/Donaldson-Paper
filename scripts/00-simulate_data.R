# Load required libraries
library(tibble)

# Simulate additional data for testing
set.seed(123)
simulated_data <- tibble(
  ARREST_YEAR = sample(2010:2022, 5, replace = TRUE),
  DIVISION = sample(c("D14", "D12", "D22"), 5, replace = TRUE),
  HOOD_158 = sample(1:200, 5, replace = TRUE),
  NEIGHBOURHOOD_158 = sample(c("NeighA", "NeighB", "NeighC"), 5, replace = TRUE),
  SEX = sample(c("Male", "Female"), 5, replace = TRUE),
  AGE_COHORT = sample(c("<18", "18 to 24", "25 to 34"), 5, replace = TRUE),
  AGE_GROUP = sample(c("Youth", "Adult"), 5, replace = TRUE),
  CATEGORY = sample(c("Crimes Against the Person", "Controlled Drugs and Substances Act"), 5, replace = TRUE),
  SUBTYPE = sample(c("Assaults", "Other"), 5, replace = TRUE),
  ARREST_COUNT = sample(1:5, 5, replace = TRUE)
)

# Combine with the actual data
actual_data <- read.csv("C:/Users/chris/Downloads/Arrested and Charged Persons.csv")

# Exclude the '_id' column if present
if ("X_id" %in% names(actual_data)) {
  actual_data <- actual_data[, -which(names(actual_data) == "X_id")]
}

# Make sure the simulated data has the same columns as the actual data
simulated_data <- simulated_data[, names(actual_data)]

# Combine the data
simulated_and_actual_data <- rbind(actual_data, simulated_data)

# Develop some tests (e.g., summary statistics, plots)
summary(simulated_and_actual_data)

# Ensure 'outputs' directory exists
if (!dir.exists("outputs")) {
  dir.create("outputs")
}

# Save simulated data to a CSV file
write.csv(simulated_and_actual_data, "outputs/simulated_and_actual_data.csv", row.names = FALSE)
