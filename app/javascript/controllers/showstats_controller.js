import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="showstats"
export default class extends Controller {
  static targets = ['input', 'output'];
  
  connect() {
    this.toggle();
  }

  toggle() {
    if (!this.inputTarget.value) {
      this.outputTarget.hidden = true;
    } else {
      this.outputTarget.hidden = false;
    } 
  }
}
