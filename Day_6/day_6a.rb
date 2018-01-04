require "pry"
banks = File.read("day_6_input.txt").chomp.split
banks.map! { |bank| bank.to_i }

def redistribute(banks)
  total_blocks_to_redistribute = banks.max
  max_bank = banks.find_index(total_blocks_to_redistribute)
  blocks_to_add_to_each_bank = total_blocks_to_redistribute / banks.count
  banks_that_get_extra_block = total_blocks_to_redistribute % banks.count

  if banks.count - max_bank < banks_that_get_extra_block
    after_ending_bank = banks.count - 1
    before_ending_bank = banks_that_get_extra_block - (banks.count - max_bank)
  else
    after_ending_bank = max_bank + banks_that_get_extra_block
    before_ending_bank = 0
  end
  banks[max_bank] = 0
  binding.pry
  banks.map!.with_index do |bank, index|
    if index <= before_ending_bank
      bank += blocks_to_add_to_each_bank + 1
    elsif before_ending_bank < index && index <= max_bank
      bank += blocks_to_add_to_each_bank
    elsif max_bank < index && index <= after_ending_bank
      bank += blocks_to_add_to_each_bank + 1
    end
    puts bank, index
  end
  binding.pry

  return banks
end
binding.pry
