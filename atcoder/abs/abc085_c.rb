N, Y = gets.split.map(&:to_i)
ansi, ansj, ansk = -1, -1, -1
for i in 0..N
    for j in 0..N - i
        k = N - i - j
        if 10000 * i + 5000 * j + 1000 * k == Y
            ansi, ansj, ansk = i, j, k
            break
        end
    end
end
print("#{ansi} #{ansj} #{ansk}\n")