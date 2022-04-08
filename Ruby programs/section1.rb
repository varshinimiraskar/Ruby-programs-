
#reverse a String

String1="varshini"
puts String1.reverse





#concatinating the Multiple String
#approach 1
name="hello"
name1=name.concat("world")
puts name1
#approach 2
name1="ruby"
puts name1 + " on rails is a web dev framework"
#approach 3
name1="ruby"
name2="framework"
puts "#{name1} on rails is a web dev #{name2}"





#Replace character in a string

name1="web development"
puts name1.gsub("d","m")

name2="web technology"
puts name2.gsub("technology","development")




#replace all characters in a string
name1="varshini"
puts " original string is :: #{name1}"
puts " replace string is :: #{name1.replace("Ammu")}"




#convert all letters of string to lower case

name1="varshini"
puts name1.upcase




#convert all letters of string to upper case

name1="varshini"
puts name1.downcase




#capitalize the first character of the string 
name1="hello"
puts name1.capitalize




#remove white spaces 
name1="   hello world    "
puts name1
puts name1.strip

name2="  helloworld  "
puts name2.lstrip

name3="  helloworld  "
puts name3.rstrip





#comapre the  string

name1="hello"
puts name1.eql?("hello")
puts name1.eql?("Hello")




#get the character index in string

name1="indresh"
puts name1.index("n")




#extracting character from string
name1="hello"
puts name1[4]





#covert the string array to char array
name1="welcome to cognitive cloud"
name2=name1.split("")
puts name2
puts name2.class





#anagrams
s1="w e b"
s2="e b w"
s3=s1.split(" ")
s4=s2.split(" ")
if s1.length==s2.length && s3.sort == s4.sort
    puts " The #{s1} and #{s2} are anagram with each other"
else
    puts"These are not angaram with each other"
end






#palidrome
name1="radar"
name2=name1.reverse
puts name2
if name2.eql?("#{name1}")
    puts " The String #{name1} is a palidrome"
else
    puts "not a palidrome"
end





