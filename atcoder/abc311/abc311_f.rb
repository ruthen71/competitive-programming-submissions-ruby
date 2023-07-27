H, W, = gets.split.map(&:to_i)
S = Array.new(H) { gets.chomp.tr('.#', '01').bytes.map! { |b| b - 0x30 } }

MOD = 998244353

for i in 0..H - 2
    for j in 0..W - 1
        if S[i][j] == 1
            S[i + 1][j] = 1
            if j + 1 < W
                S[i + 1][j + 1] = 1
            end
        end
    end
end

dp = Array.new(H + 1, 1)
ok = 1
for i in 0..H - 1
    dp[i] *= ok
    if S[i][W - 1] == 1
        ok = 0
    end
end
dp[H] *= ok
j = W - 2
while j >= 0
    np = Array.new(H + 1, 0)
    s = dp[0]
    for i in 0..H - 1
        s += dp[i + 1]
        s %= MOD
        np[i] = s
    end
    np[H] = s
    ok = 1
    for i in 0..H - 1
        np[i] *= ok
        if S[i][j] == 1
            ok = 0
        end
    end
    np[H] *= ok
    dp = np
    j -= 1
end
ans = dp.sum % MOD
puts ans