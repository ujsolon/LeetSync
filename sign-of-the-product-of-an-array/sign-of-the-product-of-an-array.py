import math
import numpy
class Solution:
    def arraySign(self, nums: List[int]) -> int:
        return numpy.sign(math.prod(nums))
