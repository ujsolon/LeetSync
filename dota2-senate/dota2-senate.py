class Solution:
    def predictPartyVictory(self, senate: str) -> str:
        while(len(set(senate)))==2:
            #print(senate)
            if senate[0]=="D":
                senate = senate.replace("R","",1)
                senate = senate[1:]+senate[0]
            else:
                senate = senate.replace("D","",1)
                senate = senate[1:]+senate[0]
        if(senate[0]=="R"):
            return("Radiant")
        else:
            return("Dire")

