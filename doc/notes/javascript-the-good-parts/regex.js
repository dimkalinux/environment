/**
 * Regular Expressions
 *
 * @author Artem Nezvigin <artem@artnez.com>
 */

(function() {
    // Regular expression literals are cached by the engine.
    console.groupCollapsed('Regular Expression Literal Caching');

    var createRegex = function() {
        return /^[0-9]+$/g;
    };

    // all 3 will be exactly the same object
    console.log(createRegex());
    console.log(createRegex());
    console.log(createRegex());

    console.groupEnd();
})();

(function() {
    // Regular expression dollar sequences.
    console.groupCollapsed('Regular Expression Dollar Sequences');

    var name = 'Mr. Artem Nezvigin';
    console.log(name.replace(/(Art)em/, 'Dmitri $1'));
    console.log(name.replace(/(Art)em/, 'Dmitri $&'));
    console.log(name.replace(/A(rte)m/, "Dmitri $'")); // $' will match all text
                                                       // after the main match
    console.log(name.replace(/A(rte)m/, 'Dmitri $`')); // $` will match all text
                                                       // before the main match

    console.groupEnd();
})();
