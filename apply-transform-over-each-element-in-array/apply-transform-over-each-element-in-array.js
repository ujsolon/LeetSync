/**
 * @param {number[]} arr
 * @param {Function} fn
 * @return {number[]}
 */
var map = function(arr, fn) {
    l = arr.length
    const myArray = new Array(l) 
    for(var i = 0, l; i < l; ++i){
        myArray[i]=fn(arr[i],i)
    }
    return myArray
};