import os
import shutil
import datetime
import sys

def backup_files(source_folder, backup_folder, specific_game):
    time_mapping = {
        "haloce": datetime.datetime(2001, 11, 15, 4, 17),
        "halo2": datetime.datetime(2004, 11, 9, 4, 17),
        "halo3": datetime.datetime(2007, 9, 25, 4, 17),
        "odst": datetime.datetime(2009, 9, 22, 4, 17),
        "reach": datetime.datetime(2010, 9, 14, 4, 17),
        "h2amp": datetime.datetime(2014, 11, 11, 4, 17),
        "halo4": datetime.datetime(2012, 11, 6, 4, 17)
    }

    if specific_game is None or specific_game.lower() not in time_mapping:
        print("Error: Incorrect game format.")
        print("Supported games are:")
        for game in time_mapping.keys():
            print(game)
        return

    specific_date = time_mapping[specific_game.lower()]

    count = 0

    for root, dirs, files in os.walk(source_folder):
        for file in files:
            file_path = os.path.join(root, file)
            modification_time = datetime.datetime.fromtimestamp(os.path.getmtime(file_path))

            if modification_time > specific_date:
                relative_path = os.path.relpath(file_path, source_folder)
                backup_path = os.path.join(backup_folder, relative_path)
                os.makedirs(os.path.dirname(backup_path), exist_ok=True)

                shutil.copy2(file_path, backup_path)

                print(f"Backed up: {file_path}")
                count += 1

    print(f"Backup complete with {count} files backed up.")



if len(sys.argv) < 4:
    print("Error: Missing arguments.")
    print("Usage: py halotagsbackup.py <source_folder> <backup_folder> <specific_game>")
    sys.exit(1)

source_folder = sys.argv[1]
backup_folder = sys.argv[2]
specific_game = sys.argv[3]


if not source_folder.endswith("tags"):
    print("Source directory must be your tags folder!")
    sys.exit(1)

print(f"You are about to back up {source_folder} to {backup_folder} for the game {specific_game}.")

choice = input("Do you want to proceed? (y/n): ")

if choice.lower() != "y":
    print("Backup process aborted.")
    sys.exit(0)

backup_files(source_folder, backup_folder, specific_game)
