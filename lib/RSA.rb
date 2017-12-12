require 'prime'
class RSA
	@n 
	@e 
	@d 
   def initialize n=0, e=0, d=0

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
	return message.chars.map {|c| c.ord ** @e % @n}
     end
   
   def decrypt message
return (message.map {|c| (c ** @d % @n).chr}).join("")
   end
end
 
