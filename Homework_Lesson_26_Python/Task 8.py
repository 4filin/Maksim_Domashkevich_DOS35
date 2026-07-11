def median(numbers):
    sorted_nums = sorted(numbers)
    n = len(sorted_nums)
    if n % 2 == 1:
        return sorted_nums[n // 2]
    else:
        return (sorted_nums[n//2 - 1] + sorted_nums[n//2]) / 2


data = [3, 1, 4, 1, 5, 9, 2]
print("Медиана:", median(data))
data2 = [1, 2, 3, 4]
print("Медиана:", median(data2))