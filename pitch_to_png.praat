# Task 10 script: make pitch file of all wav files in a directory and export spectrum as png
writeInfoLine: "Start script pitch_to_png"

Create Strings as file list: "fileList", "audio/*.wav"
fileCount = Get number of strings

for i from 1 to fileCount
    Erase all
    selectObject: 1
    filename$ = Get string: i
    Read from file: "audio/" + filename$
    To Pitch: 0, 75, 600
    Draw: 0, 0, 0, 500, "yes"
    Save as 300-dpi PNG file: "out/" + filename$ - "wav" + "png"

    selectObject: "Sound " + filename$ - ".wav"
    formant = To Formant (burg): 0, 5, 5500, 0.025, 50
    mean = Get mean: 1, 0, 0, "hertz"
    standard = Get standard deviation: 1, 0, 0, "hertz"
    maximum = Get maximum: 1, 0, 0, "hertz", "parabolic"
    time = Get time of maximum: 1, 0, 0, "hertz", "parabolic"

    mean = 'mean:2'
    standard = 'standard:2'
    maximum = 'maximum:2'
    time = 'time:2'

    appendInfoLine(filename$ - ".wav")
    appendInfoLine(formant)
    appendInfoLine(mean)
    appendInfoLine(standard)
    appendInfoLine(maximum)
    appendInfoLine(time)
endfor
