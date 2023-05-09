class Solution:
    def spiralOrder(self, matrix: List[List[int]]) -> List[int]:
        side = 0
        ans = []
        while len(matrix)>0 and len(matrix[0])>0:
            if side%4 == 0:
                #print(matrix)
                ans += matrix[0]
                listDelRow(matrix,0)
            if side%4 == 1:
                #print(matrix)
                ans += [i[len(matrix[0])-1] for i in matrix]
                listDelCol(matrix,len(matrix[0])-1)
            if side%4 == 2:
                temp = matrix[-1]
                temp.reverse()
                ans+=temp
                #print(matrix)
                listDelRow(matrix,len(matrix)-1)
            if side%4 == 3:
                #print(matrix)
                temp = [i[0] for i in matrix]
                temp.reverse()
                ans += temp
                listDelCol(matrix,0)
            side += 1
        return ans

def listDelCol(listoflist:[list[list]], col:int):
    for j in listoflist:
        del j[col]
    return listoflist

def listDelRow(listoflist:[list[list]], row:int):
    del listoflist[row]
    return (listoflist)
