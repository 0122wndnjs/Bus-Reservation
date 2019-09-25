/* Card.js plugin by Jesse Pollak. https://github.com/jessepollak/card */
var $ = require("jquery");
// The current card.js code does not explicitly require jQuery, but instead uses the global, so this line is needed.
window.jQuery = $;
var card = require("card");
$('form').card({
    container: '.card-wrapper',
    width: 280,

    formSelectors: {
        nameInput: 'input[name="first-name"], input[name="last-name"]'
    }
});