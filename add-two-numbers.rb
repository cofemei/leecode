# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next

    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  r = []
  head1 = l1
  head2 = l2
  body1 = l1.next
  body2 = l2.next

  r << head1.val + head2.val
  carry = (head1&.val&.to_i + head2&.val&.to_i) / 10
  # curr = ListNode.new(0 , ListNode.new)
  while body1 != nil && ( body1 != nil || body2 != nil )
    val = (body1&.val&.to_i + body2&.val&.to_i + carry) % 10

    # puts curr
    # curr.next = ListNode.new(val, ListNode.new)
    # curr = curr.next
    r << val

    carry = (body1.val + body2.val) / 10
    body1 = body1&.next
    body2 = body2&.next

    # curr = curr.next
  end
  r
end

ln1_2 = ListNode.new(3)
ln1_1 = ListNode.new(4, ln1_2)
ln1_0 = ListNode.new(2, ln1_1)

ln2_2 = ListNode.new(4)
ln2_1= ListNode.new(6, ln2_2)
ln2_0 = ListNode.new(5, ln2_1)

r= add_two_numbers(ln1_0, ln2_0)
p r
