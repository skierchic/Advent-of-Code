require "pry"
banks = File.read("day_6_input.txt").chomp.split
banks.map! { |bank| bank.to_i }

def redistribute(banks)
  total_blocks_to_redistribute = banks.max
  max_bank = banks.find_index(total_blocks_to_redistribute)
  blocks_to_add_to_each_bank = total_blocks_to_redistribute / banks.count
  banks_that_get_extra_block = total_blocks_to_redistribute % banks.count

  if banks_that_get_extra_block == 0
    after_ending_bank = max_bank
    before_ending_bank = -1
  elsif banks.count - 1 - max_bank < banks_that_get_extra_block
    after_ending_bank = banks.count - 1
    before_ending_bank = banks_that_get_extra_block - (banks.count - max_bank)
  else
    after_ending_bank = max_bank + banks_that_get_extra_block
    before_ending_bank = -1
  end


  new_banks = banks.map.with_index do |bank, index|
    if index <= before_ending_bank
      bank += blocks_to_add_to_each_bank + 1
    elsif before_ending_bank < index && index < max_bank
      bank += blocks_to_add_to_each_bank
    elsif index == max_bank
      bank = blocks_to_add_to_each_bank
    elsif max_bank < index && index <= after_ending_bank
      bank += blocks_to_add_to_each_bank + 1
    else
      bank += blocks_to_add_to_each_bank
    end
    bank
  end

  return new_banks
end

count = 0
bank_combos = [banks]
while (bank_combos.length == bank_combos.uniq.length)
  current_banks = bank_combos.last
  bank_combos.push(redistribute(current_banks))
  count += 1
end

first_inst_index = bank_combos.find_index(bank_combos.last)
infinite_loop_size = bank_combos.count - 1 - first_inst_index
puts "count is #{count}"
puts "infinte loop size is #{infinite_loop_size}"
