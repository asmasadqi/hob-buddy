export class Swiper {
  constructor(attributes) {
    this.cards            = attributes.cards || []
    this.numOfCards       = this.cards.length
    this.currentCardIndex = this.cards.length - 1
    this.currentCard      = this.cards[this.currentCardIndex]
    this.animating        = false
    this.threshold        = 150
    this.pullDeltaX       = 0
    this.deg              = 0
    this.last             = this.numOfCards <= 1
    this.likedCallback    = attributes.likedCallback
    this.dislikedCallback = attributes.dislikedCallback
    this.init()
  }

  init() {
    if (this.numOfCards === 0) return

    this.addListenersToCurrentCard()
  }

  addListenersToCurrentCard() {
    var callback = this.currentCardEventsCallback.bind(this)
    this.currentCard.addEventListener('mousedown', callback)
    this.currentCard.addEventListener('touchstart', callback)
  }

  activeCards() {
    return this.cards.filter((e) => { return !e.classList.contains('swiped') })
  }

  currentCard() {
    const activeCards = this.activeCards()
    const card        = activeCards[activeCards.length - 1]
    return card
  }

  updateCurrentCard() {
    if (this.last) return

    this.currentCardIndex = (this.currentCardIndex + this.numOfCards - 1) % this.numOfCards
    this.currentCard      = this.cards[this.currentCardIndex]
    this.last             = this.currentCardIndex < 1
    this.addListenersToCurrentCard()
  }

  currentCardEventsCallback(e) {
    if (this.animating) return

    this.card       = this.currentCard
    this.cardReject = this.card.querySelector('.swiper__card__choice.m--reject')
    this.cardLike   = this.card.querySelector('.swiper__card__choice.m--like')
    this.startX     = e.pageX || e.touches[0].pageX

    var moveCallback = this.moveEventsCallback.bind(this)
    var endCallback  = this.endEventsCallback.bind(this)

    this.moveListener = new AbortController();
    this.endListener  = new AbortController();

    document.addEventListener('mousemove', moveCallback, { signal: this.moveListener.signal })
    document.addEventListener('touchmove', moveCallback, { signal: this.moveListener.signal })
    document.addEventListener('mouseup',  endCallback, { signal: this.endListener.signal })
    document.addEventListener('touchend', endCallback, { signal: this.endListener.signal })
  }

  moveEventsCallback(e) {
    var x = e.pageX || e.touches[0].pageX
    this.pullDeltaX = (x - this.startX)
    if (!this.pullDeltaX) return
    this.pullChange()
  }

  endEventsCallback() {
    this.moveListener.abort()
    this.endListener.abort()
    if (!!this.pullDeltaX) {
      this.release()
    } else {
      this.navigateToProfile()
    }
  }

  pullChange() {
    this.animating = true
    this.deg       = this.pullDeltaX / 10
    this.currentCard.style.transform = `translateX(${this.pullDeltaX}px) rotate(${this.deg}deg)`

    var opacity       = this.pullDeltaX / 100
    var rejectOpacity = (opacity >= 0) ? 0 : Math.abs(opacity)
    var likeOpacity   = (opacity <= 0) ? 0 : opacity

    this.cardReject.style.opacity = rejectOpacity
    this.cardLike.style.opacity   = likeOpacity
  }

  release() {
    if (this.pullDeltaX >= this.threshold) {
      this.currentCard.classList.add("to-right")
      var like = true
    } else if (this.pullDeltaX <= -this.threshold) {
      this.currentCard.classList.add("to-left")
      var like = false
    }

    if (Math.abs(this.pullDeltaX) >= this.threshold) {

      like ? this.likedCallback(this.currentCard.dataset.id) : this.dislikedCallback(this.currentCard.dataset.id)
      this.currentCard.classList.add("swiped")
      setTimeout(() => {
        this.currentCard.classList.add("hidden")
        this.updateCurrentCard()
      }, 300)
    } else {
      this.currentCard.classList.add("reset")
    }

    setTimeout(() => {
      this.currentCard.setAttribute("style", "")
      this.currentCard.classList.remove("reset")
      this.currentCard.querySelectorAll(".swiper__card__choice").forEach((e) => { e.setAttribute("style", "") })

      this.pullDeltaX = 0
      this.animating  = false
    }, 300)
  }

  navigateToProfile() {
    this.currentCard.querySelector('.profile-link').click()
  }
}

global.Swiper = Swiper
