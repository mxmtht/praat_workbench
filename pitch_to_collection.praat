# Task 11 script: make pitch file of all wav files in a directory
writeInfoLine: "Start script pitch_to collection"

Create Strings as file list: "fileList", "audio/*.wav"
fileCount = Get number of strings
appendInfoLine: fileCount

for i from 1 to fileCount
    selectObject: 1
    filename$ = Get string: i
    Read from file: "audio/" + filename$
    To Pitch: 0, 75, 600
endfor

# remove files list before saving all as a collection
selectObject: 1
Remove

select all
Save as binary file: "out/sound.Collection"
Remove
