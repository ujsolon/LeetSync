vowels = "aeiou"
class Solution:
    def maxVowels(self, s: str, k: int) -> int:
        ans = len([value for value in s[0:0+k] if value in vowels])
        current = ans
        for i in range(0,len(s)-k):
            if(s[i] in vowels):
                current -= 1
            if(s[i+k] in vowels):
                current += 1
            if (current>ans):
                ans = current
        return ans