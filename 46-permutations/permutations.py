##Using itertools, a permutation list was made from the list nums
import itertools
class Solution(object):
    def permute(self, nums):
        """
        :type nums: List[int]
        :rtype: List[List[int]]
        """
        return (list(itertools.permutations(nums)))