/**
 * Labels
 *
 * @author Artem Nezvigin <artem@artnez.com>
 */

(function() {
    // Using labels to jump out of nested loops. Increases readability.
    console.groupCollapsed("Label Usage with Loops");
    
    outer: for (var i=0; i<5; i++) {
        for (var j=0; j<5; j++) {
            if (j > 2) {
                break outer;
            }
            console.log(i, j);
        }
    }
    
    console.groupEnd();
})();
