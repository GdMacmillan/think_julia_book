# 1. What is the volume of a sphere of radius 5
r = 5
print(4 * pi * r ^ 3) # 1570.7963267948965

# 2. What is the total wholesale cost of 60 copies
cov_price = 24.95
disc = .4 # wholesale discount
ship_first = 3.00 # shipping cost 1st copy
ship_add = 0.75 # shipping cost addition copies

total = 59 * (disc * cov_price + ship_add) + (disc * cov_price + ship_first)
print(total) # $ 646.05

leave_time_s = (6 * 60 + 52) * 60 # seconds since midnight
easy_pace = 8 * 60 + 15 # easy pace in seconds per mile
tempo_pace = 7 * 60 + 12 # tempo pace in seconds per mile
elapsed = 2 * easy_pace + 3 * tempo_pace # time elapsed in seconds
end_time_s = leave_time_s + elapsed
end_time_m = end_time_s / 60
end_time_h = end_time_m / 3600
formatted_h = floor(end_time_h)
formatted_m = floor((end_time_h - floor(end_time_h)) * 60)
formatted_s = floor((end_time_m - floor(end_time_m)) * 60)

print("back at: ", formatted_h, "h", formatted_m, "m", formatted_s, "s")
