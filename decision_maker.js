function addOption() {
  var e = getCurrentLetter();
  var t = "#option_" + e;
  $(".options_container").append(getOptionHtml(e));
  if (alpha_index > max_index) hideAddButton();
  $(t).focus();
  $("html, body").animate({ scrollTop: $(document).height() }, 1e3);
}
function getCurrentLetter() {
  var e = alpha_array[alpha_index];
  alpha_index++;
  return e;
}
function getOptionHtml(e) {
  var t = e.toUpperCase();
  var n =
    '<div class="form-group">' +
    '    <div class="col-sm-12">' +
    '       <input type="text" name="options[' +
    t +
    '] "id="option_' +
    e +
    '" value="" placeholder="' +
    t +
    ': " class="form-control input-lg" />' +
    "    </div>" +
    "</div>";
  return n;
}
function hideAddButton() {
  $("#add_button").prop("disabled", true);
  $("#add_button").fadeTo("slow", 0.33);
}
var alpha = "abcdefghijklmnopqrstuvwxyz";
var alpha_array = alpha.split("");
var alpha_index = 3;
var max_index = 25;
