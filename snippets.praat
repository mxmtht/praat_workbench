# Form with input values
form input values
    comment i do not need any quotation marks
    positive a
    word Word default
    sentence Sentence default sentence with spaces
endform

# Input values correspond with these variables:
writeInfoLine: a
appendInfoLine: word$
appendInfoLine: sentence$



# print hello world
txt$ = "Hello world!"
appendInfoLine(txt$)

# number manipulation
num = 4.3333333333333
appendInfo(newline$, num)
appendInfoLine('num:2')

# string manipulation
lol$ = "world!"
ww$ = txt$ - lol$
appendInfoLine(ww$)

# if block
a=1
b=3
if a < b
    appendInfoLine(a, " bigger than ", b)
endif

# while loop
i=0
while i<=10
    appendInfoLine(i)
    i=i+1
endwhile

# repeat loop
i=0
repeat
    appendInfoLine(i)
    i=i+1
until i>=10

# if statement
if i<100
    # some code
elsif i<110
    # some more code
else
    # some more more code
endif