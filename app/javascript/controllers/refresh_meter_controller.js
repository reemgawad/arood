import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "metersList", "searchInput"]

  connect() {
    console.log("hello")
  }

  update() {
    const url = `${this.formTarget.action}?query=${this.searchInputTarget.value}`
    console.log(url)
    fetch(url, { headers: { 'Accept': 'application/json' } })
    .then(response => response.json())
    .then((data) => {
      // Update the restaurants list with the search results.
      this.metersListTarget.innerHTML = data.meters;
    })
  }
}
