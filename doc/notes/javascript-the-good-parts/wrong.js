/**
 * Wrongs. Don't do this stuff.
 *
 * @author Artem Nezvigin <artem@artnez.com>
 */

(function() {
     // Do not create functions in loops. JavaScript is interpreted and is not
     // intelligent enough to optimize for this.
     //
     // The example below is fairly obvious, but a harder to spot example may
     // be one with function calls within function calls.
    console.groupCollapsed('Do Not Create Functions in Loops');

    // this is wrong
    for (var i=0; i<10; i++) {
        var multiply = function(a, b) {
            return a * b;
        };
        console.log(multiply(i, i+1));
    }

    // this is right
    var add = function(a, b) {
        return a + b;
    };
    for (var j=0; j<10; j++) {
        console.log(add(j, j+1));
    }

    console.groupEnd();
})();

(function() {
    // Do not pass JavaScript code as a string to anything. Doing so is the
    // equivalent of calling eval() on that string!
    console.groupCollapsed("Code in a String");
    var delay = setTimeout("console.log('This is an eval!');", 0);
    clearTimeout(delay);
    console.groupEnd();
})();
