require 'benchmark'

# Not that big of a difference between 1 or 10 loops
nemo = ["nemo"]
everyone = %w[dory bruce marlin nemo gill bloat nigel squirt darla hank]

# The performance time changes drastically during big data sets
large = Array.new(100000, "nemo")

def find_nemo(array)
  start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  array.each { |a| puts "Found nemo" if a == "nemo"}
  performance = Process.clock_gettime(Process::CLOCK_MONOTONIC) - start
  puts "#{performance * 1000.0} miliseconds"
end

# find_nemo nemo
find_nemo large