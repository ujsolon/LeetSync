/**
 * @param {Function} fn
 * @param {number} t
 * @return {Function}
 */
var timeLimit = function(fn, t) {
	return async function(...args) {
        const originalPromise = fn(...args); //let original function run
        const rejectPromise = new Promise((resolve,reject)=>{setTimeout(()=>{
               reject("Time Limit Exceeded")
           },t);
           }); //reject if it reaches t seconds, no resolve clause, resolve clause not used
        return Promise.race([originalPromise,rejectPromise]); //check which one is faster
    }
};

/**
 * const limited = timeLimit((t) => new Promise(res => setTimeout(res, t)), 100);
 * limited(150).catch(console.log) // "Time Limit Exceeded" at t=100ms
 */

