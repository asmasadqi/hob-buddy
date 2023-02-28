import { Controller } from "@hotwired/stimulus"

import { Swiper } from "../components/swiper";
import { Modal } from "bootstrap";

export default class extends Controller {
  static targets = ["card", "modal", "modalBody"]

  connect() {
    this.initSwiper()
    this.initModal()
  }

  initSwiper() {
    new Swiper({
      cards: this.cardTargets,
      likedCallback: this.swipeRight.bind(this),
      dislikedCallback: this.swipeLeft.bind(this)
    })
  }

  initModal() {
    this.modal = new Modal(this.modalTarget)
  }

  hideModal() {
    this.modal.hide()
  }

  swipeLeft(id){
    const url     = `/matches/swipe`
    const options = {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({"id": id, "liked": false})
    }
    fetchWithToken(url, options)
  }

  swipeRight(id){
    const url     = "/matches/swipe"
    const options = {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({"id": id, "liked": true})
    }

    fetchWithToken(url, options)
    .then(response => response.json())
    .then(this.responseHandler.bind(this))
  }

  responseHandler(data) {
    if (data.content) {
      this.modalBodyTarget.innerHTML = data.content
      this.modal.show()
    }
  }
}
