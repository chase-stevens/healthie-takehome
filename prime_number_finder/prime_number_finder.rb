require 'prime'
require 'timeout'

def find_prime_number(seconds)
  largest_prime = nil
  num = 2
  
  begin
    Timeout.timeout(seconds) do
      loop do
        if Prime.prime?(num)
          largest_prime = num
        end
        num += 1
      end
    end
  rescue Timeout::Error
    puts "Largest prime found: #{largest_prime}"
  end
  
  nil
end

find_prime_number(5)