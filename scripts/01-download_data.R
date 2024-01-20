# Copy downloaded data to project folder
source_file <- "C:/Users/chris/Downloads/Arrested and Charged Persons.csv"
destination_file <- "inputs/data/unedited_data.csv"

# Ensure the source file exists
if (!file.exists(source_file)) {
  stop("Source file does not exist:", source_file)
}

# Ensure the 'inputs/data' directory exists
if (!dir.exists("inputs/data")) {
  dir.create("inputs/data", recursive = TRUE)
}

# Copy the file
if (!file.copy(source_file, destination_file, overwrite = TRUE)) {
  stop("Failed to copy the file.")
} else {
  cat("File copied successfully to:", destination_file, "\n")
}
