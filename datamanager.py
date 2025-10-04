import csv
import random
import time

def generate_data(n=10, filename="data_dummy.csv"):
    with open(filename, mode="w", newline="") as file:
        writer = csv.writer(file)
        writer.writerow(["time", "intensitas"])  # header
        for t in range(n):
            intensitas = random.randint(0, 100)
            print(f"Generated: time={t}, intensitas={intensitas}")
            writer.writerow([t, intensitas])
            time.sleep(0.5)  # simulasi delay sensor

if __name__ == "__main__":
    generate_data(20)  # generate 20 data
