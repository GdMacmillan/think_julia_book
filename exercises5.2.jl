function get_time()
    curr_time = time()
    days = trunc(Int, curr_time ÷ (60 * 60 * 24))
    remainder = curr_time % (60 * 60 * 24)
    hours = trunc(Int, remainder ÷ (60 * 60))
    remainder = remainder % (60 * 60)
    minutes = trunc(Int, remainder ÷ 60)
    remainder = remainder % (60)
    seconds = trunc(Int, remainder)
    println(hours, ":", minutes, ":", seconds, " ", days, " days")
end

get_time()
