class grandp:
    def __init__(self,h):
        print ("grandp properties")
        self.house=h
    def displaygrandp(self):
        print ("Grandp properties", self.house)

class p:
    def __init__(self,c):
        print ("p properties")
        self.car=c
    def displayp(self):
        print ("p properties", self.car)

class c(p,grandp):
    def __init__(self,h,c,b):
        print ("c properties")
        self.bike=b
        self.car=c
        self.house=h
        
    def displayc(self):
        print ("c properties", self.house)
        print ("c properties", self.car)
        print ("c properties", self.bike)


x = c('villa','BMW','R15');
x.displayc()

