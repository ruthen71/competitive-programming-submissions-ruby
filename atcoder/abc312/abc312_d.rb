S = gets.chomp.tr('()?', '012').bytes.map! { |b| b - 0x30 }

N = S.size

dp = Array.new(1, 0)
dp[0] = 1

MOD = 998244353

N.times do |i|
    np = Array.new(i + 2, 0)
    (i + 1).times do |j|
        if S[i] != 1
            np[j + 1] += dp[j]
            if np[j + 1] >= MOD
                np[j + 1] -= MOD
            end
        end
    end
    i.times do |j|
        if S[i] != 0
            np[j] += dp[j + 1]
            if np[j] >= MOD
                np[j] -= MOD
            end
        end
    end
    dp = np.dup
end
p dp[0]