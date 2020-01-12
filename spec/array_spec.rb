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

  describe "#two_sum" do
    let(:array){ [-1, 0, 2, -2, 1] }

    it "returns a two dimensional array" do
        expect(array.two_sum.all?{ |sub_arr| sub_arr.instance_of?(Array) }).to eq(true)
    end

    it "returns all pairs of positions where the elements at those positions sum to zero" do
        expect(array.two_sum).to eq([[0, 4], [2, 3]])
    end

    it "returns pairs by smaller index first" do
        expect(array.to_sum).not_to eq([2, 3], [0, 4])
    end

  end

end