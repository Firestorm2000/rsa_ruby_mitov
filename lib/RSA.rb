require 'prime'
class RSA
	@n = 0
	@e = 0
	@d = 0
   def initialize n, e, d

	@n = n
	@d= d
	@e = e 

   end
   
   def n
	@n
   end
   
   def e
	@e
   end
   
   def d
	@d
   end
   
   def new_key
    p=Random.new 
    while Prime.prime?(p) == false do p.rand(10...99)end
    q=Random.new 
    while Prime.prime?(q) == false  do q.rand(10...99) end
    n=p*q
    euler=(p-1).lcm(q-1)
    e.rand(2...euler)
    for i in 1..euler
   if e < 1 and e > euler and gcd(e,euler)== 1 then
		e.rand(2...euler)
      redo
   	end
     end
	d=Random.new
	while d*e%euler!=1 do
	d.rand(1...1000) 
	end
	arr=Array.new[3]
	arr.push(n)
	arr.push(e)
	arr.push(d)
	return arr

   end
   
   def encrypt message
      #encrypts the message passed. The message is of type string. Encrypts each symbol of this string by using its ASCII number representation and returns the encrypted message.
   end
   
   def decrypt message
      #decrypts the message passed. The message is of type string. Decrypts each symbol of this string Encrypts each symbol of this string by using its ASCII number representationand returns the decrypted message. 
   end
end
 #val=RSA.new(3,5,6)
#puts val.n
