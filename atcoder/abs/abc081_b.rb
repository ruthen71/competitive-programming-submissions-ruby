N = gets.to_i
A = gets.split.map(&:to_i)
ans = 100
for i in 0..N - 1
    cur = 0
    while A[i] % 2 == 0
        cur += 1
        A[i] /= 2
    end
    ans = [ans, cur].min()
end
print("#{ans}\n")