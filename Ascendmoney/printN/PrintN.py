val = int(input("Enter your value: "))

for y in range(val):
    for x in range(val):
        if x == 0 or x == val-1:
            print("X", end="")
            if x == val-1:
                print("\n", end="")
        elif x == y and y > 0:
            print("X", end="")
        else:
            print(" ", end="")
    else:
        continue
