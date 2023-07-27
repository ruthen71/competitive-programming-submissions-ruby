N = gets.to_i
D = Array.new(N)
for i in 0..N - 1
    d = gets.to_i
    D[i] = d
end
D.uniq!
print("#{D.size}\n")