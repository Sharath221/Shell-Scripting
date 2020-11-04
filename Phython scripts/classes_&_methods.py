class pythonclass (object):
    Apple = "A1 grade apple";  # class variable only access by class

    def class1(self):
        print ("iam from class1 and also self")
    def class2(self, name):
        print ("iam from class2 and my name is ", name)
    def class3(self, phone):
        print ("iam from class3 and my phone no +91 ", phone)
    @staticmethod     # saticmethod decorater
    def fruits():
        print("Iam a static method call")
    @classmethod   # classmethod decorater
    def fruits1(cls):
        print ("Iam from classmethod")
    @classmethod
    def fruits2(cls, mrg):
        print ("Iam from classmethod",mrg)

x = pythonclass() # assigning of class to object variable

x.class1()  # calling function inside of class
x.class2("sharath") # calling function inside of class with arrgument string
x.class3(8297650057) # calling function inside of class with arrugment integer

x.mrg="9am"
x.evg="9pm"

x.class2(x.mrg) # passing variables to the class instantly
x.class3(x.evg)
y = pythonclass.Apple
print (y) # calling class objects directly

pythonclass.fruits() #staticmethod calling it has no agguments
pythonclass.fruits1() # classmthod calling with default cls arrgument
pythonclass.fruits2('9am') # classmethod with arrgument