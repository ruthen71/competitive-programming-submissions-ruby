N, D = gets.split.map(&:to_i)
T = Array.new(D, 1)
N.times do
    S = gets.chomp
    for i in 0..D - 1
        if S[i] == 'x'
            T[i] = 0
        end
    end
end
ans, cur = 0, 0
for i in 0..D - 1
    if T[i] == 1
        cur += 1
    else
        cur = 0
    end
    ans = [ans, cur].max()
end
print("#{ans}\n")