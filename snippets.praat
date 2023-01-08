# print hello world
txt$ = "Hello world!"
writeInfo(txt$)

# number manipulation
num = 4.3333333333333
appendInfo(newline$, num)
writeInfoLine('num:2')

# string manipulation
lol$ = "world!"
ww$ = txt$ - lol$
writeInfoLine(ww$)

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
