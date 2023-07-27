N = gets.to_i
A = gets.split.map(&:to_i)
for i in 0..N - 1
    A[i] -= 1
end
cur = 0
N.times do
    cur = A[cur]
end
seen = Array.new(N, 0)
seen[cur] = 1
ans = [cur]
while seen[A[cur]] == 0
    cur = A[cur]
    seen[cur] = 1
    ans << cur
end
M = ans.size
print("#{M}\n")
res = ""
for i in 0..M - 1
    res << "#{ans[i] + 1}"
    if i < M - 1
        res << " "
    else
        res << "\n"
    end
end
puts res