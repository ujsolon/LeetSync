class Solution:
    def isAlienSorted(self, words: List[str], order: str) -> bool:
        dictionary = dict(zip(order, range(26)))
        nums =[]
        for word in words:
            num=[]
            for letter in word:
                num.append(dictionary[letter])
            nums.append(num)
        newnums=sorted(nums)
        return(nums==newnums)