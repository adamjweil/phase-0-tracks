
require_relative 'toRoman'

	describe 'to_roman' do
	it 'should convert 1 to I' do
		expect(to_roman(1)).to eq('I')
	end
	describe 'to_roman' do
	it 'should convert 5 to V' do
		expect(to_roman(5)).to eq('V')
	end

	describe 'to_roman' do
	it 'should convert 5 to V' do
		expect(to_roman(16)).to eq('XVI')
	end

end