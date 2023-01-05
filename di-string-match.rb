# @param {String} s
# @return {Integer[]}
def di_string_match(s)
  r = (0..s.length).to_a
  a_r = []
  s.split("").each do |str|
    if str == 'I'
      a_r << r.shift
    else
      a_r << r.pop
    end
  end

  a_r << r.pop
  a_r
end



s = "DDID"
p di_string_match(s)
