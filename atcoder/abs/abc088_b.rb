N = gets.to_i
A = gets.split.map(&:to_i)
ans = 0
A.sort! {|a, b| b <=> a }
for i in 0..N - 1
    if i % 2 == 0
        ans += A[i]
    else
        ans -= A[i]
    end
end
print("#{ans}\n")