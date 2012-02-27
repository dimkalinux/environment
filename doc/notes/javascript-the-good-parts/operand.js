/**
 * Operands
 *
 * @author Artem Nezvigin <artem@artnez.com>
 */

(function() {
    // `&&` operand being used to determine a value. This is in contrast to the
    // commonly used `||` operand to set default values.
    console.groupCollapsed('&& Operand for Assignment');

    var x = true,
        y = false;
    console.log(y && x); // false
    console.log(y || x); // true

    console.groupEnd();
})();
