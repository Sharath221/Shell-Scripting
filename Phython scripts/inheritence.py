class grandp:
    def __init__(self,h):
        print ("grandp properties")
        self.house=h
    def displaygrandp(self):
        print ("Grandp properties", self.house)

class p(grandp):
    def __init__(self,h,c):
        print ("p properties")
        self.house=h
        self.car=c
    def displayp(self):
        print ("p properties", self.house)
        print ("p properties", self.car)

class c(p):
    def __init__(self,h,c,b):
        print ("c properties")
        self.bike=b
        super().__init__(h,c)
        
    def displayc(self):
        print ("c properties", self.house)
        print ("c properties", self.car)
        print ("c properties", self.bike)


x = c('villa','BMW','R15');
x.displayc()

