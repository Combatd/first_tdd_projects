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
        expect(array.two_sum).not_to eq([[2, 3], [0, 4]])
    end

  end

  describe "#my_transpose" do
      let(:rows){[ [0, 1, 2], [3, 4, 5], [6, 7, 8] ]}
      let(:cols){[ [0, 3, 6], [1, 4, 7], [2, 5, 8] ]}
    
    it "returns a two dimensional array" do
        expect(rows.my_transpose.all?{|sub_arr| sub_arr.instance_of?(Array)}).to eq(true)
    end

    it "returns the rows reoriented as columns and columns reoriented as rows" do
        expect(rows.my_transpose).to eq(cols)
    end

  end
  
  describe "#stock_picker" do
      let(:sellable_stock) { [7, 1, 5, 3, 6, 4]}
      let(:not_sell_stock) { [7, 6, 4, 3, 1] }
      context "when profitable days exist" do
          it "returns the most profitable pair of days on which to first buy stock then sell it" do
              expect(sellable_stock.stock_picker).to eq([2, 5])
          end
      end
      context "when there is no good day to buy then wait to sell" do
          it "returns nil" do
              expect(not_sell_stock.stock_picker).to be_nil
          end
      end
  end

end