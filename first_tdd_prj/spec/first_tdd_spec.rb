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
end