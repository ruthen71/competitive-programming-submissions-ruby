N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

A.sort!
B.sort! { |a, b| b <=> a }

C = []

A.each do |a|
    C << a
end

B.each do |b|
    C << b + 1
end

ans = 1 << 30

C.uniq!

C.each do |c|
    i = A.bsearch_index { |x| x > c }
    j = B.bsearch_index { |x| x < c }
    if i == nil
        i = N
    end
    if j == nil
        j = M
    end
    if i >= j
        ans = [ans, c].min
    end
end

p ans