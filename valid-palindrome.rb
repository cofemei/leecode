# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  r = s.gsub(/[,: ]/, '').downcase
  revert = r.reverse
  r == revert
end


s = "A man, a plan, a canal: Panama"
puts is_palindrome(s)
