files = ["report.txt", "data.csv", "image.png", "report_2025.pdf"]

sub = "report"
filtered_files = []

for f in files:
    if sub in f:
        filtered_files.append(f)

print(filtered_files)