class Solution:
    def findDifference(self, nums1: List[int], nums2: List[int]) -> List[List[int]]:
        answer=list()
        answer.append(set(nums1)-set(nums2))
        answer.append(set(nums2)-set(nums1))
        return(answer)