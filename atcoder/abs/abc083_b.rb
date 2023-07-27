N, A, B = gets.split.map(&:to_i)
ans = 0
for i in 1..N
    digit_sum = 0
    num = i
    while num != 0
        digit_sum += num % 10
        num /= 10
    end
    if A <= digit_sum && digit_sum <= B
        ans += i
    end
end
print("#{ans}\n")