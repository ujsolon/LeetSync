class Solution:
    def reverseWords(self, s: str) -> str:
        new_string = s.split()
        new_string = new_string[::-1]
        new_string = ' '.join(new_string).strip()
        return new_string