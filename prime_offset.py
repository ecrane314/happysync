def answer(n):
    prime_string = prime_list(n)
    return prime_string[n:n+5]

def prime_list(n):
    prime_string=""
    for i in range(2,100):
        prime = True
        print("i preloop: " + str(i))
        if len(prime_string)<(n+6):
            for j in range (2,i):
                print("i: " + str(i) + "  j: " + str(j))
                if i%j==0:
                    prime = False
            if prime == True:
                prime_string += str(i) 
    return prime_string

def test():
    n = 0
    for i in range(1,100):
        #print("i: " + str(i))
        if n >= 100:
            break
        n += i
        print(n)

if __name__=="__main__":
    #test()
   answer(0)
   answer(3)