require "first_tdd"

describe Array do
    
    describe "#my_uniq" do
    let(:array_1) { [1, 2, 1, 3, 3] }
    let(:array_2) { [1, 2, 3] } 

        it "removes duplicates from an array" do
            expect(array_1.my_uniq).to eq([1, 2, 3])
        end

        it "returns the unique elements in the order they first appeared" do
            expect(array_2.my_uniq).to eq([1, 2, 3])
        end

        it "does not modify the original array" do
            array_1.my_uniq
            expect(array_1).to eq([1, 2, 1, 3, 3])
        end
    end

    describe "#two_sum" do
    let (:arr1) { [-1, 0, 2, -2, 1] }
    let (:arr2) { [5, -5, 4, - 4, 3] }

        it "finds all pairs of unique positions whose elements sum to 0" do
            expect(arr1.two_sum).to eq([[0, 4], [2, 3]])
        end

        it "should be ordered where the smaller index always comes first" do
            expect(arr2.two_sum).to eq([[0, 1], [2, 3]])
        end
    end

    describe "#my_transpose" do
    let (:arr1) { [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
      ] }

        it "return a transposed version of the array" do
            expect(arr1.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
        end

        it "should contain subarrays of the same length" do
            expect(arr1.length).to eq(arr1[0].length)
        end

        it "does not modify the original array" do
            arr1.my_transpose
            expect(arr1).to eq([[0, 1, 2], [3, 4, 5], [6, 7, 8]])
        end
    end

    describe "#stock_picker" do
    let (:arr1) { [56, 32, 1, 90, 45, 56] }

        it "outputs the most profitable pair of days on which to first buy the stock and then sell the stock" do
            expect(arr1.stock_picker).to eq([56, 1])
        end
    end
end