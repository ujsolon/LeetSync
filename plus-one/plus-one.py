class Solution(object):
    def plusOne(self, digits):
        """
        :type digits: List[int]
        :rtype: List[int]
        """
        digits = int(''.join([str(item) for item in digits]))+1
        ans = [int(item) for item in list(str(digits))]
        return(ans)