/**
 * Prototypes
 *
 * @author Artem Nezvigin <artem@artnez.com>
 */

(function() {
    // The prototype chain bubbles upward when a property cannot be found. This
    // is a demonstration of that occurrence. This is very useful because it
    // mimics inheritance of default values.
    //
    // It's also interesting that deleting a property will not really delete the
    // value if the property already has one in the prototype.
    console.groupCollapsed('Prototype Chain Bubbling Upward');

    var Sky = function() {};
    Sky.prototype.color = 'blue';

    var redSky = new Sky();
    redSky.color = 'red';

    console.log(redSky.color); // red
    delete redSky.color; // the new value of 'color' should be undefined right?

    console.log(redSky.color); // nope! it's "blue"

    console.groupEnd();
})();

(function() {
    // `hasOwnProperty()` should be used to test if a property belongs directly
    // to an object and not any of its prototype objects up the prototype chain.
    console.groupCollapsed("Object Property Ownership");

    Object.prototype.custom = 'custom!';
    console.log('Value of custom property on an Object:', {}.custom);
    console.log('Value of custom property on an Array:',  [].custom);
    console.log('Value of custom property on a String:',  ''.custom);

    var CustomString = String;
    CustomString.prototype.anotherCustom = 'another custom!';

    var myString = new CustomString();
    myString.ownProperty = 'this is my property!';

    console.log(
        'Does myString own property "custom"?',
        myString.hasOwnProperty('custom')); // false

    console.log(
        'Does myString own property "anotherCustom"?',
        myString.hasOwnProperty('anotherCustom')); // false

    console.log(
        'Does myString own property "ownProperty"?',
        myString.hasOwnProperty('ownProperty')); // true

    // Another example, with an object.
    var dude = {
        name: 'Artem',
        age: 100,
        personality: 'fancy'
    };
    for (k in dude) {
        console.log(k); // will print: name, age, personality, custom
    }
    for (k in dude) {
        if (dude.hasOwnProperty(k)) {
            console.log(k); // will print: name, age, personality
        }
    }

    console.groupEnd();
})();
