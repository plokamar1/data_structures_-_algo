require 'benchmark'

# Not that big of a difference between 1 or 10 loops
nemo = ["nemo"]
everyone = %w[dory bruce marlin nemo gill bloat nigel squirt darla hank]

# The performance time changes drastically during big data sets
large = Array.new(100000, "nemo")

def find_nemo(array)
  puts "Find_nemo"
  start = Process.clock_gettime(Process::CLOCK_MONOTONIC)

  # O(n) performance since we have as many loops/operations as the size of the dataset
  array.each { |a| "Found nemo" if a == "nemo"}

  performance = Process.clock_gettime(Process::CLOCK_MONOTONIC) - start
  puts "single pointer #{performance * 1000.0} miliseconds"
end

def find_nemo_with_two_pointers(array)
  return if array.size == 0

  x=0
  y = array.size - 1

  start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  array.each do |i , a|
    break if x>= y

    array[x] if array[x] == "nemo"
    array[y] if array[y] == "nemo"

    x += 1
    y -= 1
  end

  performance = Process.clock_gettime(Process::CLOCK_MONOTONIC) - start
  puts "two pointers #{performance * 1000.0} miliseconds"
end

# find_nemo nemo
find_nemo large
find_nemo_with_two_pointers large

# This results in something like:
# single pointer 23.775399997248314 miliseconds
# two pointers 7.2932499897433445 miliseconds