class Solution(object):
    def isPalindrome(self, s):
        """
        :type s: str
        :rtype: bool
        """
        s = ''.join(c for c in s if c.isalnum()) ##remove non alphabetic cahracters
        s = s.lower() ##convert to lowercase
        if (s==s[::-1]):
            return(True)
        else:
            return(False)