class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        sample_len = len(strs)
        min_str_len = min([len(item) for item in strs])
        ans = ''
        for j in range(min_str_len):
            charj = [strs[i][j] for i in range(sample_len)]
            if len(set(charj)) == 1:
                char = list(set(charj))[0]
                ans += char
            else:
                break
        return ans