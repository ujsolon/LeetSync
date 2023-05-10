class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        ans = ""
        n = min([len(item) for item in strs])
        print(n)
        char = 0
        if n==0:
            return ans
        while char <= n-1:
            strschar = [item[char] for item in strs]
            if len(set(strschar))>1:
                break
            else:
                ans+= strs[0][char]
                char +=1
        return ans


