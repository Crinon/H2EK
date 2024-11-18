# Run the COMMAND to Build static 2004 list

# Before any commit
#   Run the COMMAND again to get the NEW list (to look for reused 2004 files in custom path and don't get modified vanilla)
#   Remove from the NEW list all the OLD
#   write result :
#     Remove gitignore under custom section
#     Insert gitignore under custom section

# Write data and tags path from 2004
find ./tags ./data -type f -not -path '*/\.git/*' ! -newermt 2005-01-01 -print > files_2004.txt


# Find common paths (to be ignored) and save to a temporary file
grep -F -x -f files_to_ignore.txt files_2004.txt > temp_common_paths.txt


# Remove first two char ./ of each row to be ignored (interpreted by git)
sed -i 's/^..//' temp_common_paths.txt


# Remove everything below the mark in the destination file and save the result
sed '/###---+++MARK+++---###/,$d' .gitignore > temp_result.txt


# Add the mark back to the end of the cleaned file
echo "###---+++MARK+++---###" >> temp_result.txt


# Append the 2004 common paths (to be ignored) to the destination file
cat temp_common_paths.txt >> temp_result.txt


# Overwrite the original result file with the updated content
mv temp_result.txt .gitignore


# Clean up the temporary file
rm temp_common_paths.txt
rm files_2004.txt