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

    def my_transpose
        trans = []

        self.each.with_index do |ele1, i|
            sub = []

            self.each.with_index do |ele2, j|
                sub << self[j][i]
            end

            trans << sub
        end
        trans
    end

    def stock_picker 
        selloff = {}

        self.each.with_index do |num1, i|
            self.each.with_index do |num2, j|
                if j > i 
                    profit = num1 - num2
                    selloff[profit] = [num1, num2]
                end
            end
        end

        max = selloff.keys.max
        return selloff[max]
    end
end


