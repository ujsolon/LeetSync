/**
 * @param {number[]} nums
 * @param {Function} fn
 * @param {number} init
 * @return {number}
 */
var reduce = function(nums, fn, init) {
    l = nums.length;
    if (l==0){
        return (init)
    }
    else{
        var val = fn(init, nums[0]);
        for(var i = 1, l; i < l; ++i){
            console.log(val)
            val = fn(val, nums[i])
        }
        return(val)
    }
    
};