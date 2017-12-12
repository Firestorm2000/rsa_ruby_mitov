require 'RSA.rb'
RSpec.describe RSA do
	
	msg = "Hell"
	rsa = RSA.new(671,131,121)
	context "basic tests" do
		it "checks if return n works" do
			expect(rsa.n).to eq(671)
		end

		it "checks if return e works" do
			expect(rsa.e).to eq(131)
		end
		
		it "checks if return d works" do
			expect(rsa.d).to eq(121)
		end
	end
	
	context "crypt/decrypt tests" do
		it "crypt/decrypt works?" do
			expect(rsa.decrypt(rsa.encrypt(msg))).to eq(msg)
		end

	end
end
