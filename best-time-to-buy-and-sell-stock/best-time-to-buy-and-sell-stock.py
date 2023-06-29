class Solution(object):
    def maxProfit(self, prices):
        """
        :type prices: List[int]
        :rtype: int
        """
        N = len(prices)
        maxprofit = 0
        left = 0
        right = 1
        while right < N:
            profit = prices[right] - prices[left]
            if (prices[left] < prices[right]):
                maxprofit = max(profit, maxprofit)
            else:
                left = right ##if price at left if is bigger than price at right, continue with new search, with left = right region
            right += 1
        return maxprofit

