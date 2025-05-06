# Assignment for loops
#1st Square
n = 5
for i in range(n):
    for j in range(n):
        print("*" , end="")
    print()
print()

 #2nd decreasing triangle
m = 5
for i in range(m):
    for j in range(i,m):
        print("*" , end="")
    print()       
print()

#3rd pyramid
o = 5
for i in range(o):
    for j in range(i,n):
        print(" " , end="")
    for j in range(i):
        print("*" , end="")
    for j in range(i+1):
        print("*" , end="")  
    print()        
print()

#4th Alphabet A
z = 6

for i in range(z):
    for j in range(2 * z - 1):
        if j == z-i-1 or j==z+i-1 or (i==z//2 and j>z-i-1 and j<z+i-1):
            print("*", end="")
        else:
            print(" ", end="")
    print()
