class Secretary_Jeniffer
  def min_time(n,x,y)
    arr = [x,y]
    min_t= arr.min
    max_t= arr.max
    # 'speed' of each xerox
    # print 1.0/t_min part of the paper a second
    fastest = 1.0/min_t 
    # print 1.0/t_max part of the paper a second
    slowest = 1.0/max_t 
    # when she comes to the office,  she'll start printing on the fastest xerox machine
    time = min_t
    num_copies = 1  
    # find how namy copies we have after every t_min time
    # it might be 2.3 or 4.1 or any other float number
    # check how many full copies we have
    while num_copies.floor < n 
      num_copies += min_t * fastest + min_t * slowest
      time += min_t 
    end
   p time
  end
end

Secretary_Jeniffer.new.min_time(5,1,2)
