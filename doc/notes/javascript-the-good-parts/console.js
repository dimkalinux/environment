/**
 * Example of using the console in Google Chrome and Firebug for Firefox.
 * Firebug supports more in its console API; worth checking out.
 *
 * @author Artem Nezvigin <artem@artnez.com>
 */

(function() {
    console.groupCollapsed("Debugging Console");

    // Assertions can be used for unit testing.
    console.assert(true); // nothing will happen
    console.assert(false); // exception raised and error written to console

    // Prints the amount of times count is called with the given argument.
    console.count(); // will print 1
    console.count(); // will print 2
    console.count('foo'); // will print 1
    console.count('bar'); // will print 1
    console.count('foo'); // will print 2
    console.count(); // will print 3

    // Different ways to print log messages.
    console.log("LOG MESSAGE");
    console.debug("DEBUG MESSAGE");
    console.info("INFO MESSAGE");
    console.warn("WARNING MESSAGE");
    console.error("ERROR MESSAGE");

    // Kind of like var_dump() in PHP.
    console.dir({foo: 'bar'});
    console.dir(document.getElementById('heading'));
    console.dirxml(document.getElementById('about'));

    // Grouping of log messages...
    console.group('group name');
    console.log('inner message');
    console.log('inner message');
    console.groupEnd();

    console.groupCollapsed('collapsed group');
    console.log('inner message');
    console.log('inner message');
    console.groupEnd();

    // Profile your code.
    console.profile("PROFILE 1");
    console.log("Do something");
    console.log("Do something else");
    console.profileEnd("PROFILE 1");

    // Print a call trace.
    console.trace();

    console.groupEnd();
})();
