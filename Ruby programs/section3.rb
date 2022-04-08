● Program Check if a given string is Palindrome

pal = "Never a foot too far, even."
class String
  def palindrome?
    letters = self.downcase.scan(/\w/)
    letters == letters.reverse
  end
end
pal.palindrome?

................................................................
● Program Display Matrix using a 2-dimensional array

TwoDArr = Array.new(2){Array.new(2)}

printf "Enter elements of MATRIX:\n";
i = 0;
while (i < 2) 
  j = 0;
  while (j < 2) 
    printf "ELEMENT [%d][%d]: ", i, j;
    TwoDArr[i][j] =  gets.chomp.to_i;
    j = j + 1;
  end
  i = i + 1;
end

printf "MATRIX:\n";
i = 0;
while (i < 2)
  j = 0;
  while (j < 2) 
    print TwoDArr[i][j]," ";
    j = j + 1;
  end
  i = i + 1;
  print "\n";
end

.....................................................................................
● Program Compare elements between 2 different arrays

a = [1,2,3]
b = [1,4,3]
a.zip(b)
=> [[1, 1], [2, 4], [3, 3]]
......................................................................................
● Program Linear search

arr = [12,45,23,39,37];

i    =   0;
item =   0;
flag =   0;

print "Enter item: ";
item = gets.chomp.to_i;  

flag = -1
while(i<arr.size)
    if(arr[i]==item)
        flag = i;
        break;
    end
    i = i + 1;
end


if(flag>=0)
    print "Item found at index: ",flag,"\n"; 
else
    print "Item not found\n"; 
end
..............................................................................
● Program Binary search  

arr = [12,23,39,57,68];

item =   0;
flag =   -1;

first = 0;
last = arr.size() - 1;
middle = (first + last) / 2;

print "Enter item: ";
item = gets.chomp.to_i;  

while(first<=last)
    if(arr[middle]<item)
        first=middle + 1;
    elsif(arr[middle]==item)
        flag=middle;
        break;
    else
        last = middle - 1;
    end
    middle = (first + last) / 2;
end

if(flag>=0)
    print "Item found at index: ",flag,"\n"; 
else
    print "Item not found\n"; 
end

..................................................................
● Program Find the Largest Element of an Array 

array=[1,2,3,4,5]
puts array.max
5


.......................................................................
 Program - Find the Smallest Element of an Array

array=[1,2,3,4,5]
puts array.min
1
..........................................................................

Program - Add Two Matrix Using Multi-dimensional Arrays

Matrix1 = Array.new(2){Array.new(2)};
Matrix2 = Array.new(2){Array.new(2)};
Matrix3 = Array.new(2){Array.new(2)};

printf "Enter elements of MATRIX1:\n";
i = 0;
while (i < 2) 
  j = 0;
  while (j < 2) 
    printf "ELEMENT [%d][%d]: ", i, j;
    Matrix1[i][j] =  gets.chomp.to_i;
    j = j + 1;
  end
  i = i + 1;
end

printf "Enter elements of MATRIX2:\n";
i = 0;
while (i < 2) 
  j = 0;
  while (j < 2) 
    printf "ELEMENT [%d][%d]: ", i, j;
    Matrix2[i][j] =  gets.chomp.to_i;
    j = j + 1;
  end
  i = i + 1;
end


#Addition of Matrix1 and Matrix2.
i = 0;
while (i < 2)
  j = 0;
  while (j < 2) 
    Matrix3[i][j] = Matrix1[i][j] * Matrix2[i][j];
    j = j + 1;
  end
  i = i + 1;
  print "\n";
end

printf "MATRIX1:\n";
i = 0;
while (i < 2)
  j = 0;
  while (j < 2) 
    print Matrix1[i][j]," ";
    j = j + 1;
  end
  i = i + 1;
  print "\n";
end

printf "MATRIX2:\n";
i = 0;
while (i < 2)
  j = 0;
  while (j < 2) 
    print Matrix2[i][j]," ";
    j = j + 1;
  end
  i = i + 1;
  print "\n";
end

printf "Addition of Matrix1 and Matrix2:\n";
i = 0;
while (i < 2)
  j = 0;
  while (j < 2) 
    print Matrix3[i][j]," ";
    j = j + 1;
  end
  i = i + 1;
  print "\n";
end
...............................................................................
 Program - Multiply to Matrix Using Multi-dimensional Arrays

def printRecord(matrix) 
	print("  --------------\n")
	#  Assume  N x N Matrix size
	row = matrix.length
	col = matrix[0].length
	i = 0
	#  Iterate the row element
	while (i < row) 
		j = 0
		#  Iterate the column element
		while (j < col) 
			#  Display element value
			print("  ", matrix[i][j])
			j += 1
		end
		#  Add new line
		print("\n")
		i += 1
	end
	print("\n")
end

def multiplication(a, b) 
	#  Get the size
	row = a.length
	col = a[0].length
	#  This matrix are store the result of multiplication 
	result = Array.new(row) {Array.new(col) {0}}
	i = 0
	while (i < row) 
		j = 0
		while (j < col) 
			#  Set the initial value of new matrix element
			result[i][j] = 0
			k = 0
			while (k < row) 
				#  Multiply matrix A [i] row and [k] columns to 
				#  the Matrix B [k] columns and [j] rows.
				result[i][j] += a[i][k] * b[k][j]
				k += 1
			end
			j += 1
		end
		i += 1
	end

	print("  Matrix A\n")
	#  Print element of matrix x
	printRecord(a)
	print("  Matrix B\n")
	#  Print element of matrix y
	printRecord(b)
	print("  Matrix [(A) x (B)]\n")
	#  Display resultant matrix
	printRecord(result)
end

def main() 
	#  Define matrix A
	a = [
		[1, 2, 3],
		[6, 1, 2],
		[5, 4, 3]
	]
	#  Define matrix B
	b = [
		[3, 1, 3],
		[1, 1, 2],
		[2, 2, 3]
	]
	multiplication(a, b)
end

main()
.........................................................................

● Program - Find Transpose of a Matrix 


# Ruby program for transpose() method in Matrix

# Include matrix 
require "matrix"

# Initialize a matrix 
mat1 = Matrix[[3, 12], [2, 8]]  

# Prints the transpose matrix
puts  mat1.transpose()
........................................................................
● Program - Calculate Average Using Arrays

irb(main):020:0> arr = [5, 6, 7, 8]
=> [5, 6, 7, 8]
irb(main):021:0> arr.inject{ |sum, el| sum + el }.to_f / arr.size
irb(main):022:0*
=> 6.5
irb(main):023:0>
....................................................................
 Program - Check if An Array Contains a Given Value

C:\Users\Puneeth>irb
irb(main):001:0> array=[1,2,3,4]
=> [1, 2, 3, 4]
irb(main):002:0> array.include?(2)
=> true
irb(main):003:0>
........................................................................
● Program - Merge Two Arrays
irb(main):003:0> arr1=[1,2,3,4,5]
=> [1, 2, 3, 4, 5]
irb(main):004:0> arr2=[5,6,7,8]
=> [5, 6, 7, 8]
irb(main):005:0> arr1+arr2
=> [1, 2, 3, 4, 5, 5, 6, 7, 8]
irb(main):006:0>
.............................................................................
● Program - Check if Two Arrays Are Equal or Not

irb(main):008:0> arr1 = [1, 2, 3]
=> [1, 2, 3]
irb(main):009:0> arr2 = [1, 2, 4]
=> [1, 2, 3]
irb(main):010:0> arr1==arr2
=> false
irb(main):011:0>
..................................................................................
● Program - Remove All Occurrences of an Element in an Array

irb(main):016:0> array=[1,2,3,1,1,1,3,2,4,5,6]
=> [1, 2, 3, 1, 1, 1, 3, 2, 4, 5, 6]
irb(main):017:0> array.uniq!
=> [1, 2, 3, 4, 5, 6]
irb(main):018:0>

..................................................................................
Program - Find Common Array Elements

irb(main):020:0>
irb(main):021:0> arr1 = ["RAM","KRISHNA","SHIV","GANESH"];
=> ["RAM", "KRISHNA", "SHIV", "GANESH"]
irb(main):022:0> arr2 = ["KRISHNA","RAM"];
=> ["KRISHNA", "RAM"]
irb(main):023:0>
irb(main):024:0> arr3 = arr1 & arr2;
=> ["RAM", "KRISHNA"]
irb(main):025:0>
irb(main):026:0> print "Common array elements:\n#{arr3}";
Common array elements:
["RAM", "KRISHNA"]=> nil
irb(main):027:0>
..........................................................................................
● Program - Copy All the Elements of One Array to Another Array

irb(main):043:0> a = [1, 2, 3]
=> [1, 2, 3]
irb(main):044:0>
irb(main):045:0> b = a.dup
=> [1, 2, 3]
irb(main):046:0>
irb(main):047:0> b
=> [1, 2, 3]
irb(main):048:0>
...................................................................................................
● Program - Array Rotation
irb(main):079:0> arr=[1,2,3,4,5,6]
=> [1, 2, 3, 4, 5, 6]
irb(main):080:0> arr.rotate(1)
=> [2, 3, 4, 5, 6, 1]
irb(main):081:0> arr.rotate(2)
=> [3, 4, 5, 6, 1, 2]
irb(main):082:0>
.........................................................................................................