import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="activity-chatroom-subscription"
export default class extends Controller {
  static values = { chatroomId: Number, currentUserId: Number }
  static targets = ["messages"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "ActivityChatroomChannel", id: this.chatroomIdValue },
      { received: data => this.#insertMessageAndScrollDown(data) }
    )
    console.log(`Subscribed to the chatroom with the id ${this.chatroomIdValue}.`)
    // scroll to the last message in chatroom
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }

  resetForm(event) {
    event.target.reset()
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }

  #buildMessageElement(currentUserIsSender, message) {
    // if the previous message is from the same user remove the bubble tail style
    if (this.messagesTarget.lastElementChild != null ) {
      if (this.messagesTarget.lastElementChild.className.trimEnd() === this.#userStyleClass(currentUserIsSender)) {
        this.messagesTarget.lastElementChild.classList.add("no-tail")
      }
    } 
    return `      
      <div class="${this.#userStyleClass(currentUserIsSender)}">
        ${message}
      </div>
    `
  }

  #justifyClass(currentUserIsSender) {
    return currentUserIsSender ? "justify-content-end" : "justify-content-start"
  }
  
  #userStyleClass(currentUserIsSender) {
    return currentUserIsSender ? "sender-style" : "receiver-style"
  }

  #insertMessageAndScrollDown(data) {    
    // Logic to know if the sender is the current_user
    const currentUserIsSender = this.currentUserIdValue === data.sender_id

    // Creating the whole message from the `data.message` String
    const messageElement = this.#buildMessageElement(currentUserIsSender, data.message)

    // Inserting the `message` in the DOM
    this.messagesTarget.insertAdjacentHTML("beforeend", messageElement)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }
}
