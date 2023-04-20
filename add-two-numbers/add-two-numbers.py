# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
def listTOint(l):
    s = [str(integer) for integer in l]
    a_string = "".join(s)
    res = int(a_string)
    return res
def digits(x:int):
    return [int(item) for item in list(str(x))]

class Solution:
    def addTwoNumbers(self, l1: Optional[ListNode], l2: Optional[ListNode]) -> Optional[ListNode]:
        values1=[]
        values2=[]

        ##the below stores ListNode as python list, in reverse order
        while l1:
            values1.append(l1.val)
            l1 = l1.next
        while l2:
            values2.append(l2.val)
            l2 = l2.next
        #print(values1,values2)
        ansint = listTOint(values1[::-1]) + listTOint(values2[::-1])
        print(ansint)
        anslist=digits(ansint)

        ##List to ListNode
        head=ListNode(anslist.pop())
        tail = head
        while anslist:
            tail.next=ListNode(anslist.pop())
            tail = tail.next
        '''
        tail = head
        e=0
        while e < len(anslist):
            
            tail.next = ListNode(anslist[e])
            tail = tail.next
            e+=1
        '''
        return(head)
        


        