ar = [1,2,3,4,5]

def log_pairs(array)
  return "" if array.empty?

  result = []
  array.each do |i,a|
    total = 0
    array.each do |y, b|
      next if result.include?("#{i}#{y}")

      total+=1

      puts "#{i}#{y}"

      next if result.include?("#{y}#{i}")

      puts "#{y}#{i}"
    end
    puts "#{total} repetitions"
  end
end

log_pairs(ar)