import $ from "jquery";

class Popup {
  //describe/create object
  constructor() {
    this.openButton = $(".cash-button");
    this.closeButton = $(".form__popup-close");
    this.searchOverlay = $(".form__popup-overlay");
    this.events();
  }
  //events
  events() {
    this.openButton.on("click", this.openOverlay.bind(this));
    this.closeButton.on("click", this.closeOverlay.bind(this));
  }
  openOverlay() {
    this.searchOverlay.addClass("form__popup-overlay--active");
  }
  closeOverlay() {
    this.searchOverlay.removeClass("form__popup-overlay--active");
  }
}
alert("hello");
export default Popup;
