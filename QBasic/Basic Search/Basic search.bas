REM to fix up the challenges of binary search.

CLS

'creating an array.
arraysize = 20
DIM SHARED array(arraysize)

'inserting element in the array.
firstelenent = 45
a = firstelenent
for i = 1 to arraysize
    array(i) = a
    if a mod 2 = 0 then
        a = a+3
    elseif a mod 2 = 1 then 
        a = a-5
    else
    end if
next i

looper = 1
print
print spc(5); "WELCOME"

while looper = 1
print
print " Home"
print " ===="
print
print " Make your choice"
print

print " 1. Start >>"
print " 2. End   <<"
print
input " Enter your choice number..";looper

if looper = 1 then

    redo = 2
    while redo = 2
    
    cls
    print 'to get space.
    print " Here is the array of elements for you.. ^_^"
    print 'to get space.
    'printing the array's elements.
    for a = 1 to arraysize
        print array(a);spc(2);
    next a
    
    print
    print
    print " ^_^ Which element's position you wanna find ";
    input element
    
    for z = 1 to arraysize
        if element = array(z) then
            cls
                print
                print " Yes.. We find ";element;" in Position ";z;" ^_^"
                print " Looped "; z ;" times"
                print
                print " Enter your choice.."
                print
                print " 1. Check Array"
                print " 2. Find another element"
                print " 3. Home"
                print
                input " Here you go..";choice
                print
                
                if choice = 1 then
                    cls
                    print
                    for a = 1 to arraysize
                        print " Pos";a;":  --> ";array(a)
                    next a
                    print
                    input " Press 1 to go back to home.."; looper
                    redo = choice
                    cls
                elseif choice = 2 then
                    cls
                    redo = choice
                elseif choice = 3 then
                    cls
                    looper = 1
                    redo = choice
                else
                    cls
                    print "invalid choice"
                    redo = 2
                end if
        else
            count = count + 1
        end if
    next z
    if count = arraysize then
        cls
        print
        print " There is no ";element;" in the array"
        Print " Position -1"
        
        print
        print " Enter your choice.."
        print
        print " 1. Check Array"
        print " 2. Find another element"
        print " 3. Home"
        print
        input " Here you go..";choice
        print
                
        if choice = 1 then
            cls
            print
            for a = 1 to arraysize
                print " Pos";a;":  --> ";array(a)
            next a
            print
            input " Press 1 to go back to home.."; looper
            redo = choice
            cls
        elseif choice = 2 then
            cls
            redo = choice
        elseif choice = 3 then
            cls
            looper = 1
            redo = choice
        else
            cls
            print "invalid choice"
            redo = 2
        end if
    end if
wend

elseif looper = 2 then
    end
else
    cls
    print
    print " Invalid chioce"
    print
    looper = 1
    cls
end if
wend
end

