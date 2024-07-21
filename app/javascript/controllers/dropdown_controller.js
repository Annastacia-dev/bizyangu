import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets = ["menu"];

  connect() {
    this.hide();
    // Listen for the custom event to close dropdowns
    document.addEventListener('dropdown:toggle', this.closeOthers.bind(this));
  }

  toggle() {
    this.menuTarget.classList.toggle('hidden');
    // Dispatch a custom event when the dropdown is toggled
    const event = new CustomEvent('dropdown:toggle', {
      detail: { controller: this }
    });
    document.dispatchEvent(event);
  }

  hide() {
    this.menuTarget.classList.add('hidden');
  }

  show() {
    this.menuTarget.classList.remove('hidden');
  }

  close(event) {
    if (!this.menuTarget.contains(event.target)) {
      this.hide();
    }
  }

  closeOthers(event) {
    // Check if the event was dispatched by this instance
    if (event.detail.controller !== this) {
      this.hide();
    }
  }

  disconnect() {
    // Clean up event listener when the controller is disconnected
    document.removeEventListener('dropdown:toggle', this.closeOthers.bind(this));
  }
}