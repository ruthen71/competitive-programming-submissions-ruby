H, W, N = gets.split.map(&:to_i)
A = Array.new(H) { Array.new(W, 0) }
N.times do
    a, b = gets.split.map(&:to_i)
    a -= 1
    b -= 1
    A[a][b] = 1
end
ans = 0
dp = Array.new(H + 1) { Array.new(W + 1, 0) }
for i in 0..H - 1
    for j in 0..W - 1
        if A[i][j] == 1
            dp[i + 1][j + 1] = 0
        else
            dp[i + 1][j + 1] = [dp[i][j + 1], dp[i + 1][j], dp[i][j]].min() + 1
        end
        ans += dp[i + 1][j + 1]
    end
end
puts ans