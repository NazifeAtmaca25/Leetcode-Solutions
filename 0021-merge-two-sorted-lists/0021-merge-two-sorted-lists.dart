/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    List<int> temp=[];

    while(list1 != null){
        temp.add(list1.val);
        list1=list1.next;
    }

    while(list2 != null){
        temp.add(list2.val);
        list2=list2.next;
    }

    temp.sort();

    ListNode dummy = ListNode(-1); 
    ListNode? list = dummy;

    for(int i=0;i<temp.length;i++){
        list?.next=ListNode(temp[i]);
        list=list?.next;
    }

    return dummy.next;
  }
}