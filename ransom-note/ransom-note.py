import unicodedata


class Solution(object):
    def canConstruct(self, ransomNote, magazine):
        """
        :type ransomNote: str
        :type magazine: str
        :rtype: bool

        while ransomNote:
            for i in ransomNote:
                if i in magazine:
                    ransomNote.remove(i)
                    magazine.remove(i)
                else:
                    return False
        """
        ransomNote=list(str(ransomNote))
        magazine=list(str(magazine))
        while ransomNote:
            for i in ransomNote:
                if i in magazine:
                    ransomNote.remove(i)
                    magazine.remove(i)
                else:
                    return False
        return True
        
