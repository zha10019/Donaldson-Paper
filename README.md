
# Project Title: Analyzing Open Data Toronto

# Overview
This project aims to analyze a dataset from Open Data Toronto, following the guidelines outlined in the E.1 Donaldson Paper task. The primary goal is to create a well-organized and reproducible analysis, providing insights into the chosen dataset. The project includes data simulation, downloading, and analysis, leading to the creation of a comprehensive paper.

# Project Structure
scripts/
00-simulate_data.R: R script to simulate the dataset of interest and develop tests.
01-download_data.R: R script to download the actual data from Open Data Toronto in a reproducible way.
inputs/
data/
unedited_data.csv: Placeholder for the downloaded or simulated data.
outputs/
paper/
paper.qmd: Quarto document containing the paper sections (title, author, date, abstract, introduction, data, references).
docs/
Supplementary documents, appendices, or any additional supporting materials.
.gitignore: Gitignore file to ensure unnecessary files are not committed.
Usage
Clone this repository: git clone https://github.com/zha10019/Donaldson-Paper
Navigate to the project directory: cd Donaldson-Paper

# Simulate Data
Run the simulation script to generate synthetic data:
Rscript scripts/00-simulate_data.R
Download Actual Data
Run the download script to fetch the real data from Open Data Toronto:
Rscript scripts/01-download_data.R

# Generate Paper
Ensure you have Quarto installed. Navigate to the outputs/paper.qmd directory and use the following command to generate the PDF:
quarto render paper.qmd --to=pdf
The final paper will be available at outputs/paper/paper.pdf.

# Statement on LLM Usage
No LLMs were ued

# Contact
For any questions or concerns, please create an issue in the GitHub repository.
