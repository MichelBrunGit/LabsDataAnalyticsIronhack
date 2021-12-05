# l = List()

# integer_list =  [1, 1, 2 ,3 ,1 ,2 ,3 ,4]
# values_list = [1, 3]
# l.remove_(integer_list, values_list) == [2, 2, 4]

class List:
    def remove_(self, integer_list, values_list):
        for i in values_list:
            while i in integer_list:
                    integer_list.remove(i)
        return integer_list

#integers_list = [-18, -31, 81, -19, 111, -888]
#digits_list = [1, 8, 4]
#l.count_spec_digits(integers_list, digits_list) == [(1, 7), (8, 5), (4, 0)]

class List(object):
    def count_spec_digits(self, integers_list, digits_list):
        import re
        list=[]
        n=0
        for i in digits_list:
            n=len(re.findall(r'['+str(i)+']', str(integers_list)))
            list.append((i,n))
        return list

# Count the number of occurrences of each character and return it as a list of tuples in order of appearance. For empty output return an empty list.
# Example:
# ordered_count("abracadabra") == [('a', 5), ('b', 2), ('r', 2), ('c', 1), ('d', 1)]
def ordered_count(inp):
    list=[]
    for l in inp:
        l_count=inp.count(l)
        tuplecount=(l,l_count)
        if tuplecount not in list:
            list.append(tuplecount)
    return list

#from oset import oset
#[(d, str(inp).count(str(d))) for d in set(inp)]
    