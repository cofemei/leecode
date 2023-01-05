# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end

  def to_s
    @val
  end
end
# @param {ListNode} head
# @return {ListNode}
def odd_even_list(head)
  n_next = head
  odd = []
  even = []
  i = 1 
  while n_next != nil
    if i % 2 == 1 
      odd << n_next.val
    else
      even << n_next.val
    end
    n_next = n_next.next
    i += 1
  end
  odd + even
end

def odd_even_list2(head)
  odd = head
  evenhead = head.next
  even = evenhead
  while even && even.next
    odd.next = odd.next.next
    even.next = even.next.next
    odd = odd.next
    even = even.next
  end
  odd.next = evenhead
  head
end

n5 = ListNode.new(5)
n4 = ListNode.new(4,n5)
n3 = ListNode.new(3,n4)
n2 = ListNode.new(2,n3)
n1 = ListNode.new(1,n2)


p odd_even_list2(n1)
