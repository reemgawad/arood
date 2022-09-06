import { Controller } from "@hotwired/stimulus"
import { cutOffByFlag } from "webpack-cli/bin/utils/errorHelpers"

export default class extends Controller {
  static targets = ["form", "metersList", "searchInput"]

  connect() {
    // console.log("hello")
  }

  update() {
    const url = `${this.formTarget.action}?query=${this.searchInputTarget.value}&commit=Search`
    fetch(url, { headers: { 'Accept': 'application/json' } })
    .then(response => response.json())
    .then((data) => {
      console.log(data);
      // Update the meters list with the search results.
      this.metersListTarget.innerHTML = data.meters;
    })
  }
}
