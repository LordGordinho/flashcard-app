import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["front", "back"];
  static values = {
    fliped: Boolean
  }

  connect() {
    console.log("hello")
  }

  flip() {
    this.flipedValue = !this.flipedValue
  }  

  flipedValueChanged(){
    this.frontTarget.classList.add("hidden")
    this.backTarget.classList.remove("hidden")

    if(this.flipedValue) return;

    this.frontTarget.classList.remove("hidden")
    this.backTarget.classList.add("hidden")
  }
}
