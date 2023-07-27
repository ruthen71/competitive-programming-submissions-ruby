S = gets.chomp
N = S.size
dp = Array.new(N + 1, 0)
T = ["dream", "dreamer", "erase", "eraser"]
dp[0] = 1
for i in 0..N - 1
    if dp[i] == 1
        for j in 0..3
            if i + T[j].size <= N && S[i, T[j].size] == T[j]
                dp[i + T[j].size] = 1
            end
        end
    end
end
if dp[N] == 1
    print("YES\n");
else
    print("NO\n")
end