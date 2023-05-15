/**
 * @param {Function} fn
 * @return {Function}
 */
var curry = function(fn) {
    return function curried(...args) {
        if (args.length < fn.length) { //this checks if given input is lacking compared to the original
            return function (...args2){ //if input is lacking, fix ...args and return function whose addional input is ...args2
                return curried(...args, ...args2);
            };
        };
        return fn(...args);
    };
};

/**
 * function sum(a, b) { return a + b; }
 * const csum = curry(sum);
 * csum(1)(2) // 3
 */