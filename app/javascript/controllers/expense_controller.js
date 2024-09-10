import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["select", "amount"]

  connect() {
    this.updateAmount();
  }

  updateAmount() {
    const selectedOption = this.selectTarget.options[this.selectTarget.selectedIndex];
    const amount = selectedOption.getAttribute("data-amount");
    this.amountTarget.value = amount;
  }
}

