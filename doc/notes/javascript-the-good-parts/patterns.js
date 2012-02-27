/**
 * Patterns
 *
 * @author Artem Nezvigin <artem@artnez.com>
 */

(function() {
    // Private variables in object constructors.
    console.groupCollapsed('Private Object Properties');

    var ModalWindow = function(options) {
        options = options || {};

        var width = options.width || 0,
            height = options.height || 0;

        return {
            getWidth: function() {
                return width;
            },
            setWidth: function(newWidth) {
                width = newWidth;
            },
            getHeight: function() {
                return height;
            }
        }
    };

    var x = new ModalWindow({width: 100, height: 150});
    console.log(x.getWidth(), x.getHeight());

    x.setWidth(300);
    console.log(x.getWidth(), x.getHeight());

    console.groupEnd();
})();
