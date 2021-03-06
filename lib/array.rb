require 'active_support/inflector'


# monkey-patching Array class
class Array

    def my_uniq
        unique_arr = []
        self.each { |ele| unique_arr << ele if !unique_arr.include?(ele) }
        unique_arr
    end

    def two_sum
        two_sum_arr = []
        self.each_with_index do |ele, i|
          temp_arr = []
          self.each_with_index do |sub_ele, j|
            if ele + sub_ele === 0
                temp_arr << i
                temp_arr << j
                temp_arr.sort
            end

            if temp_arr.length != 0 && temp_arr.first != temp_arr[-1]
                two_sum_arr << temp_arr.sort 
            end

          end
        end
        two_sum_arr.my_uniq
    end

    def my_transpose
        transposed_array = []
        self.each_with_index do |sub_arr, idx|
            transposed_array[idx] = []
            sub_arr.each_with_index do |ele, j|
                transposed_array[idx] << self[j][idx]
            end
        end
        transposed_array
    end

    def stock_picker 
        profitable_days = {}
        self.each_index do |i|
            # we compare with succeeding days
            (i + 1...self.length).each do |j|
                # can't sell a stock before purchase
                next if self[j] < self[i] 
                # reassign each key to those elements
                profitable_days[[i + 1, j + 1]] = self[j]-self[i]
            end
        end
        # return the largest key value pair
    profitable_days.key(profitable_days.values.max)
  end


end