REM to fix up the challenges of binary search.

CLS

DECLARE FUNCTION binarySearchRec% (Array%(), i1%, i2%, n%)
DECLARE FUNCTION binarySearch% (Array%(), n%)


'creating an array.
arraysize = 20
DIM SHARED Array%(arraysize)

'inserting element in the array.
for i% = 0 TO arraysize
   Array%(i%) = a%
   a% = a% + INT(RND * 5)
next i%

'starting the program.
looper = 1
print
print spc(5); "WELCOME"

while looper = 1
print 'designing the menu.
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
    for i = 1 to arraysize
        print Array%(i);spc(2);
    next i
    print
    
    print
    print " ^_^ Which element's position you wanna find ";
    input n%

    Res% = binarySearch%(Array%(), n%)

    if Res% <> -1 then
        cls
        print
        print " Yes.. We find ";n%;" in Position ";Res%;" ^_^"
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
                        print " Pos";a;":  --> ";Array%(a)
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
        cls
        print
        print " There is no ";n%;" in the array"
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
                print " Pos";a;":  --> ";Array%(a)
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

   END IF
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

'codes for 1st function.
FUNCTION binarySearch% (Array%(), n%)
   binarySearch% = binarySearchRec%(Array%(), LBOUND(Array%), UBOUND(Array%), n%)
END FUNCTION

'codes for 2nd function.
FUNCTION binarySearchRec% (Array%(), i1%, i2%, n%)
   Res% = -1
   IF i1% > i2% THEN binarySearchRec% = Res%: EXIT FUNCTION
   midPoint% = i1% + (i2% - i1%) \ 2
   IF Array%(midPoint%) = n% THEN
      Res% = midPoint%
   ELSEIF Array%(midPoint%) < n% THEN
      Res% = binarySearchRec%(Array%(), midPoint% + 1, i2%, n%)
   ELSE
      Res% = binarySearchRec%(Array%(), i1%, midPoint% - 1, n%)
   END IF
   binarySearchRec% = Res%
END FUNCTION
