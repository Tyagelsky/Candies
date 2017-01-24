class Sloboda_friends
  def find_friends(n, s, matrix)
    arr = [s-1]
    #goin to dynamicly fill arr with indexes of the friends and their friends
    #going to look for friends going down the columns
    arr.each do |j|
    #check all rows for friends
    n.times do |i|
    #push index of the friend into the arr if it's not already there
    arr << i if matrix[i][j]!=0 && !arr.include?(i)
      end
    end
    # -1 because we don't count ourself as a friend
    arr.count - 1
    end
end

Sloboda_friends.new.find_friends(3,1,[[0,1,0],[1,0,1],[0,1,0]])