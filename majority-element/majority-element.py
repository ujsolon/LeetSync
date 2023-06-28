class Solution(object):
    def majorityElement(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        ans=0
        s = list(set(nums))
        for item in s:
            if nums.count(item) > nums.count(ans):
                ans = item
        return(ans)
