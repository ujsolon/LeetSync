class Solution:
    def generateMatrix(self, n: int) -> List[List[int]]:
        if not n:
            return []
        ans = [[0 for _ in range(n)] for _ in range(n)]
        left, right, top, bottom, count = 0, n-1, 0, n-1, 1
        while left <= right and top <= bottom:
            for i in range(left, right+1):
                ans[top][i] = count
                count +=1
                print(ans)
            top +=1
            for i in range(top, bottom+1):
                ans[i][right] = count
                count +=1
                print(ans)
            right -=1
            if top <= bottom:
                for i in range(right, left-1,-1):
                    ans[bottom][i] = count
                    count +=1
                    print(ans)
                bottom -=1
            if left <= right:
                for i in range(bottom, top-1, -1):
                    ans[i][left] = count
                    count +=1
                    print(ans)
                left +=1
        return ans

