import { Controller } from "@hotwired/stimulus"
import { get } from "@rails/request.js"

export default class extends Controller {
  static targets = ["select"]
  static values = { url: String }

  async update(event) {
    const response = await get(this.urlValue,{
      query: { category: event.target.value }
    })

    if (response.ok) {
      const html = await response.html
      this.selectTarget.innerHTML = html
    }
  }
}
