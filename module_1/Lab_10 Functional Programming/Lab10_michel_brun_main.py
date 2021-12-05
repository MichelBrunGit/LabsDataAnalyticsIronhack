#CountingSheep
def count_sheeps(sheep):
    n=0
    for el in sheep:
        if el==True:
            n+=1
        elif el==False:
            continue
        else:
            print("There is a wrong value")
            break
    return n

#["Keep", "Remove", "Keep", "Remove", "Keep", ...] --> ["Keep", "Keep", "Keep", ...]
def remove_every_other(my_list):
    n = len(my_list)
    for i in range(int(n/2)):
        my_list.pop(i+1)
    return my_list

#348597 => [7,9,5,8,4,3]
def digitize(n):
    y=list(str(n))
    z=y[::-1]
    n=0
    for i in z:
        z[n]=int(i)
        n+=1
    return z

#For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.
def square_digits(num):
    y=list(str(num))
    n=0
    for i in y:
        y[n]=str(int(i)**2)
        n+=1
    z=int(''.join(y))
    return z

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






