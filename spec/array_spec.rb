require 'rspec'
require 'array'


describe Array do
  

  describe "#my_uniq" do
    let(:array) { [1, 2, 1, 3, 3] }

    it "removes duplicate elements" do
        expect(array.my_uniq).to eq([1, 2, 3])
    end

    it "returns a new array" do
        expect(array.instance_of?(Array)).to eq(true)
    end

  end

end