import peewee
from peewee import *

db = MySQLDatabase('testperson', user='root',passwd='')

class Person(peewee.Model):
	first_name = peewee.CharField()
	last_name = peewee.TextField()
	home = peewee.TextField()
	
	class Meta:
		database = db
	
#### The following code assumes we have a list of people to go into the database; it loops through and 
### dynamically creates the fields in a database....
new_people = [["Barrack", "Obama", "New York"],
			  ["Donald", "Trump", "White House"],
			  ["George", "Bush", "Texas"],
			  ["Muhammed", "Elegbede", "Dallas" ]
			  ]	
for i in new_people:
	first = i[0]
	last = i[1]
	home = i[2]
	person = Person(first_name=first, last_name=last, home=home )
	person.save()	

##### The method defined below takes the respective values of the fields to be created as arguments and creates
####  a new person instance when called with the parameter.
##### The scope of the code could be broader in a real project situation to test if the inputs are consistent with
##### the input type defined in the database.
def createnew(first, last, home):
	new_person = Person(first_name=first, last_name=last, home=home )
	new_person.save()
	return True

####### Sample call to the function to create a new Person instance.	
createnew("Wale", "Adedayo", "Portgal")
createnew("James", "Bond", "Sydney")



#### The method below loops through the Person table and prints all the contents of the table.
def readcontent():
	for person in Person.select():
		print person.first_name, person.last_name, person.home

readcontent()