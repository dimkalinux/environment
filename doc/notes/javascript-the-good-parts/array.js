/**
 * Arrays
 *
 * @author Artem Nezvigin <artem@artnez.com>
 */

(function() {
    // Using Array.length in interesting ways.
    console.groupCollapsed('Using Array.length');

    var myArray = [];
    console.log(myArray.length);

    myArray[5000] = true;
    console.log(myArray.length);

    String.prototype.repeat = function(count) {
        return (new Array(count+1)).join(this);
    };

    console.log('a'.repeat(5));
    console.log('abc'.repeat(5));

    console.groupEnd();
})();