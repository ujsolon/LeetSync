/**
 * @param {number[]} arr
 * @param {Function} fn
 * @return {number[]}
 */
var filter = function(arr, fn) {
    l = arr.length
    const myArray = new Array() 
    for(var i = 0, l; i < l; ++i){
        if(fn(arr[i],i) != false){
            myArray.push(arr[i])
        }
    }
    return myArray
};