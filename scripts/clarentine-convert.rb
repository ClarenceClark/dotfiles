#!/usr/bin/env ruby

require 'time'

class Integer
  def inc()
    return self + 1
  end
end

def clarentine_time(tf)
  ti = Date.parse('2000 Jan 01')
  cla = (tf - ti).to_int.to_s(12)

  day = cla[-1] ? cla[-1].to_i(12) : 0
  cycle = cla[-2] ? cla[-2].to_i(12) : 0

  # Convert all other numbers to season
  if cla.length < 3
    season = 0
  else
    sn = cla.length - 2
    season = cla[0..sn-1].to_i(12)
  end

  #puts cla, season, cycle, day

  # +1 to cycle and day because they are 1-indexed
  fmt_date = [season, cycle.inc, day.inc].map do |x|x.to_s end
  return fmt_date.join('.')
end

if ARGV.empty?
  puts "Today: " + clarentine_time(DateTime.now.to_date)
else
  ARGV.each do|a|
    puts a + ": " + tf = clarentine_time(Date.parse(a))
  end
end