class methodtesting (object):
    def one(self, name):
        """
        docstring checking
        """
        pass
        print ('its from ', name);
    def two(self):
        """
        docstring
        """
        pass
        print ('its from self');

a = methodtesting();


a.one(10)
b = methodtesting();
b.one('Sharath')

a.two()