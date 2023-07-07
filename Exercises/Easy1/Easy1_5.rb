require 'pry'

LOWER = ('a'..'z').to_a
UPPER = ('A'..'Z').to_a

def rot_13(str)
  result = ""

  str.chars.each do |letter|
    if UPPER.include?(letter)
      result << UPPER[convert(letter)]
    elsif LOWER.include?(letter)
      result << LOWER[convert(letter)]
    else
      result << letter
    end
  end
  puts result
end

def convert(old_letter)
  old_letter = old_letter.downcase
  idx = LOWER.index(old_letter) + 13
  if idx >= 26
    diff = idx - 26
    new_letter = diff
  else
    new_letter = idx
  end

  new_letter
end

rot_13('Nqn Ybirynpr')
rot_13('Tenpr Ubccre')
rot_13('Nqryr Tbyqfgvar')
rot_13('Nyna Ghevat')
rot_13('Puneyrf Onoontr')
rot_13('Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv')
rot_13('Wbua Ngnanfbss')
rot_13('Ybvf Unvog')
rot_13('Pynhqr Funaaba')
rot_13('Fgrir Wbof')
rot_13('Ovyy Tngrf')
rot_13('Gvz Orearef-Yrr')
rot_13('Fgrir Jbmavnx')
rot_13('Xbaenq Mhfr')
rot_13('Fve Nagbal Ubner')
rot_13('Zneiva Zvafxl')
rot_13('Lhxvuveb Zngfhzbgb')
rot_13('Unllvz Fybavzfxv')
rot_13('Tregehqr Oynapu')
