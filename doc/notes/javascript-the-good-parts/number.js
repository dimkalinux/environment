/**
 * Numbers
 *
 * @author Artem Nezvigin <artem@artnez.com>
 */

(function() {
    console.groupCollapsed('Number.toFixed()');

    var x = 123;
    console.log(x.toFixed(0)); // "123"

    var y = 345;
    console.log(y.toFixed(2)); // "345.00"

    var z = 567.89;
    console.log(z.toFixed(1)); // "567.9"

    console.groupEnd();
})();


(function() {
    console.groupCollapsed('parseInt() Should Always Have a Radix');

    // The '0' prefix parseInt() it evaluate base 8
    console.log(parseInt('08')); // 0
    console.log(parseInt('09')); // 0

    // Always provide the radix to guarantee the right results.
    console.log(parseInt('08', 10)); // 8
    console.log(parseInt('09', 10)); // 9

    console.groupEnd();
})();
