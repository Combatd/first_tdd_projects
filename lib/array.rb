require 'active_support/inflector'


# monkey-patching Array class
class Array

    def my_uniq
        unique_arr = []
        self.each { |ele| unique_arr << ele if !unique_arr.include?(ele) }
        unique_arr
    end

end