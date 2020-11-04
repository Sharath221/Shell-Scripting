import threading
import time

print ("Main start")

class thread1(threading.Thread):
    def run (self):
        for i in range(10):
            print ("fromthread 1:",i)

class thread2(threading.Thread):
    def run (self):
        for i in range(10):
            print ("fromthread 2: ",i)


t1 = thread1()
t1.start()
t1.join()
t2 = thread2 ()
t2.start()
t2.join()

print ("End main")

# threading not woking need to lookoff
