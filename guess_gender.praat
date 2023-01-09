form file path
    sentence Filepath
endform

writeInfoLine: "Analyzing file: " + filepath$
Read from file: filepath$
To Pitch: 0, 20, 600
min = Get minimum: 0, 0, "Hertz", "parabolic"
Remove

selectObject: 1
if min < 130
    appendInfoLine: "Speaker is male"
    To Pitch: 0, 60, 600
elsif min < 220
    appendInfoLine: "Speaker is female"
    To Pitch: 0, 150, 600
elseif min > 220
    appendInfoLine: "Speaker is a child"
    To Pitch: 0, 150, 600
endif

select all
Save as binary file: "out/pitch.Collection"
Remove
