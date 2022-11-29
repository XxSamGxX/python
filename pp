Practical 1
a. Create a program that asks the user to enter their name and their age. Print out
a message addressed to them that tells them the year that they will turn 100
years old.
name=input("Enter your name :- ")
age=int(input("Enter your age in years :- "))
fut_year = (100-age) + 2022
print(name,"will turn 100 years old in the year",fut_year)

b. Enter the number from the user and depending on whether the number is even
or odd, print out an appropriate message to the user
num=int(input("Enter a positive integer :- "))
if num%2==0:
 print(num,"is an even number.")
else:
 print(num,"is an odd number.")
 
 c. Write a program to generate the Fibonacci series
 n1,n2=0,1
n=int(input("Enter the number of terms required:- "))
if n<=0 :
 print("Please enter a positive integer!")
else:
 print("The Fibonacci Sequence: ")
 for i in range(1,n+1):
 n3=n1+n2
 print(n1,end=" ")
 n1=n2
 n2=n3
 i+=1

d. Write a function that reverses the user defined value.
num=int(input("Enter a positive number :- "))
flag=0
a=0
if num<0:
 print("Please enter a positive number!")
else:
 while num>0:
 remainder=num%10
 num=num//10
 flag=flag*10+remainder
 print("The Reverse of the number is",flag)
 
 e. Write a function to check the input value is Armstrong and also write the
function for Palindrome.
num = int(input("Enter the number :- "))
if num<0:
 print ("Enter a positive integer:- ")
else:
 flag=0
 copy=num
 while copy>0:
 remainder=copy%10
 flag=flag+remainder**3
 copy//=10
 if flag==num:
 print("The number is an armstrong number.")
 else:
 print("The number is not an armstrong number.")
 flag=0
 copy=num
 while copy>0:
 remainder=copy%10
 copy//=10
 flag=flag*10+remainder
 if flag==num:
 print("The number is a Palindrome.")
 else:
 print("The number is not a Palindrome.")
 
 f. Write a recursive function to print the factorial for a given number.
def recur_factorial(n):
 if n == 1:
 return n
 else:
 return n*recur_factorial(n-1)
num = int(input("Enter a number: "))
if num < 0:
 print("Factorial does not exist for negative numbers")
elif num == 0:
 print("The factorial of 0 is 1")
else:
 print("The factorial of",num,"is",recur_factorial(num))
 
 
 
 
 Practical 2
 a. Write a function that takes a character (i.e. a string of length 1) and returns
True if it is a vowel, False otherwise.
def vowel ():
 char=input("Enter any character:- ")
 if (len(char)!=1):
 print("Please enter a valid character!")
 else:
 char=char.lower()
 vowels=("a","e","i","o","u")
 if char in vowels:
 return True
 else:
 return False
print(vowel())

b. Define a function that computes the length of a given list or string.
def length():
 String = input("Enter any string :")
 count=0
 for i in String:
 count+=1
 print("The length of the string is",count)
length()

c. Define a procedure histogram() that takes a list of integers and prints a
histogram to the screen.
List=[8,6,4,5]
count=0
length=len(List)
while count<length:
 print(List[count]*"*")
 count+=1
 
 
 
 Practical 3
a. Write a function to check a sentence to see if it is a pangram or not.
def pangram(string):
 alphabets = "abcdefghijklmnopqrstuvwxyz"
 for char in alphabets:
 if char not in alphabets.lower():
 return False

 return True
string = input("Enter a string :")
if(pangram(string) == True):
 print("Yes, It is a pangram.")
else:
 print("No, It is not a pangram")
 
b. Write a program that prints out all the elements of the list that are less than 5.
a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
b = []
for i in a:
 if i < 5:
 b.append(i)
print(b)





Practical 4
a. Write a program that takes two lists and returns True if they have at least one
common member
def common (list1,list2):
 for i in list1:
 if i in list2:
 return True
print(common([13,313,32,2,14,21,3], [14,34,143,35,5]))
print(common([43,34,3,3,14,5], [235,52,245,25,4]))


b. Write a Python program to print a specified list after removing the 0th, 2nd, 4th
and 5th elements
list = [2,4,6,8,10,12,14,16,18,20]
list.pop(0)
list.pop(1)
list.pop(2)
list.pop(2)
print(list)

c. Write a Python program to clone or copy a list.
def clone(og_list):
 clone_list = og_list.copy()
 return clone_list
og_list= [1224,134,1224,24,1224]
clone_list = clone(og_list)
print("The Original List : ", og_list)
print("The Copied List : ",clone_list)




Practical 5
a. Write a Python script to sort (ascending and descending) a dictionary by
value.
Attendance = {"Batch1": 30, "Batch2": 27, "Batch3": 29}
sorted_values = sorted(Attendance.values())
sorted_dict = {}
for i in sorted_values:
 for k in Attendance.keys():
 if Attendance[k] == i:
 sorted_dict[k] = Attendance[k]
print("The dictionary sorted in ascending order :", sorted_dict)
sorted_values = sorted(Attendance.values(),reverse=True)
sorted_dict = {}
for i in sorted_values:
 for k in Attendance.keys():
 if Attendance[k] == i:
 sorted_dict[k] = Attendance[k]
print("The dictionary sorted in descending order :", sorted_dict)

b. Write a Python script to concatenate following dictionaries to create a new
one.
dic1={1:10, 2:20}
dic2={3:30, 4:40}
dic3={5:50,6:60}
dic4 = {}
for d in (dic1, dic2, dic3): dic4.update(d)
print("The concatenated list is",dic4)

c. Write a Python program to sum all the items in a dictionary
def Sum(dict):
 return sum(dict.values())
marks = {"Physics": 85, "Mathematics": 88, "Statistics": 76}
print("Sum of the items in dictionary is", Sum(marks))
