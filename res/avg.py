import os
import sys
import numpy

filename = "non-foveated.txt"

dtGen = []
dtInt = []
dtLig = []

with open(filename) as f:
    for line in f:
        nums = line.split()
        dtGen.append(float(nums[0]))
        dtInt.append(float(nums[1]))
        dtLig.append(float(nums[2]))

avgGen = str(sum(dtGen) / float(len(dtGen)))
avgInt = str(sum(dtInt) / float(len(dtInt)))
avgLig = str(sum(dtLig) / float(len(dtLig)))

print("\nAvg:")
print(avgGen)
print(avgInt)
print(avgLig)
