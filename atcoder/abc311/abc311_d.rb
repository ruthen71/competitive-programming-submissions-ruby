N, M = gets.split.map(&:to_i)
S = Array.new(N) { gets.chomp }
seen = Array.new(N) { Array.new(M, 0) }
visit = Array.new(N) { Array.new(M, 0) }
seen[1][1] = 1
visit[1][1] = 1
que = [1 * M + 1]
dx = [1, 0, -1, 0]
dy = [0, 1, 0, -1]
def ok(x, y)
    0 <= x && x < N && 0 <= y && y < M && S[x][y] == '.'
end
while que.size > 0
    tmp = que.shift
    cx, cy = tmp / M, tmp % M
    for k in 0..3
        x, y = cx, cy
        while ok(x + dx[k], y + dy[k])
            x += dx[k]
            y += dy[k]
            visit[x][y] = 1
        end
        if seen[x][y] == 0
            seen[x][y] = 1
            visit[x][y] = 1
            que << x * M + y
        end
    end
end
ans = 0
for i in 0..N - 1
    ans += visit[i].sum
end
print("#{ans}\n")