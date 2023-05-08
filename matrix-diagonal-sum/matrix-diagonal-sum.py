class Solution:
    def diagonalSum(self, mat: List[List[int]]) -> int:
        sum = 0
        n = len(mat)
        for i in range(0, n):
            sum += mat[i][i] + mat[i][-i-1]
        if (n)%2==1:
            sum -= mat[int((n-1)/2)][int((n-1)/2)]
        return(sum)
