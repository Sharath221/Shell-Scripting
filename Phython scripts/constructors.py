class myconst:
    def __init__(self,a,b):
        print ("init constrcutors here")
        self.pen=a;
        self.book=b;
        print (self.book,self.pen)
    def func(self,k,j,l):
        print ("regular call function",k,j,l)



x = myconst( 'Rena', 'White')
x.func(1,2,3)
y = myconst( 'Rena2', 'White2')