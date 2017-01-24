class Candies
  def different_gifts(x, y, z, w)
    #find all possible repeated permutations where summary of elements equal to W
    arr = [x, y, z]

    #let's find the maximum nuber of elements in our permutations
    #it's never going to be more than:
    max_number_of_elements = (w/arr.min).floor

    #find all possible repeated permutations with number of elements from 1 up to max_number_of_elements
    all_cases = (1..max_number_of_elements).flat_map do |size|
    #have to sort each permutation to get rid of the same elements of the array later on ([2, 1] and [1, 2] => the same gift)
    arr.repeated_permutation(size).map {|perm| perm.sort}
    end

    #getting rid of the repeatitions
    all_cases.uniq!

    #for each sub array find sum of it's elements
    summary = all_cases.map{|c| c.reduce(:+)}
    #find just those where sum == W
    summary.select{|c| c == w}.count
  end
end
Candies.new.different_gifts(5,10,15,50)