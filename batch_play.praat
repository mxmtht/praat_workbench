# Task 12 script: play all files in a directory
writeInfoLine: "Start script batch_play"

Create Strings as file list: "fileList", "audio/*.wav"
fileCount = Get number of strings
appendInfoLine: fileCount

for i from 1 to fileCount
    selectObject: 1
    appendInfoLine: i
    filename$ = Get string: i
    appendInfoLine: filename$
    fileID = Read from file: "audio/" + filename$ 
    Play
endfor  

