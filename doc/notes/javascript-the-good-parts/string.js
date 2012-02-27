/**
 * Strings
 *
 * @author Artem Nezvigin <artem@artnez.com>
 */

(function() {
    // Always use String.slice() instead String.substring()
    console.groupCollapsed('String.slice() vs String.substring()');

    var message = "Dmitri is the best.";
    console.log('slice:', message.slice(0, 6));
    console.log('substring:', message.substring(0, 6));
    console.log('slice w/ negative index:', message.slice(-5));
    console.log(
        'substring w/ negative index (won\'t work):',
        message.substring(-5)); // won't work

    console.groupEnd();
})();

(function() {
    // You can use String.fromCharCode() with multiple arguments to create a
    // string of characters.
    console.groupCollapsed('String.fromCharCode() with Multiple Arguments');
    console.log(String.fromCharCode(65, 114, 116, 101, 109));
    console.groupEnd();
})();
