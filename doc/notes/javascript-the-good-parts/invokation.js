/**
 * Invokation
 *
 * @author Artem Nezvigin <artem@artnez.com>
 */

(function() {
    // There are 4 ways to invoke a function in JavaScript. Each method of
    // invokation affects the value of the 'this' variable in the scope of the
    // function body.
    console.groupCollapsed('4 Methods of Invokation');

    var obj = {
        method: function() {
            console.log('method: `this` is bound to the current object', this);
        }
    };

    var fn = function() {
        console.log('function: `this` is bound to the global object', this);
    };

    var constructor = function() {
        console.log('constructor: `this` is bound to the created object', this);
    };

    var apply = function() {
        console.log('apply: `this` is bound to whatever you tell it');
    };

    obj.method();
    fn();
    new constructor();
    apply.apply(obj);

    console.groupEnd();
})();

(function() {
    // The constructor pattern allows for returning of something other than the
    // constructed object. This may not be a good idea under normal
    // circumstances but it can be useful when writing an API that is intended
    // to behave a very specific way.
    console.groupCollapsed('Constructor Returning Something Different');

    var Orange = function() {};
    var Apple = function() {
        return new Orange();
    };
    console.log('Constructing `Apple` results in an instance of:', new Apple());

    console.groupEnd();
})();
