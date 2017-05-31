require_relative 'to_roman'

	describe 'Converting Integers to Roman' do
	it "converts 1 to I" do
		expect(to_roman(1)).to eq('I')
	end
	
	it 'should convert 5 to V' do
		expect(to_roman(5)).to eq('V')
	end

	
	it 'should convert 5 to V' do
		expect(to_roman(16)).to eq('XVI')
	end

end