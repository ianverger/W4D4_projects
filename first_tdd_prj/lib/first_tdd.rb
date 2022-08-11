class Array
    def my_uniq
        arr = []

        self.each do |ele|
            arr << ele if !arr.include?(ele)
        end
        arr
    end

    def two_sum
        pairs = []

        self.each.with_index do |num1, i|
            self.each.with_index do |num2, j|
                pairs << [i, j] if j > i && num1 + num2 == 0
            end
        end

        pairs
    end
end