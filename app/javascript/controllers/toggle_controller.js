import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['button', 'menu']
  connect() {}

  toggleMenu(event){
    event.preventDefault()
    if (this.buttonTarget.getAttribute('aria-expanded') == "false"){
      this.show()
    } else {
      this.hide(null)
    }
  }

  show(){
    this.buttonTarget.setAttribute('aria-expanded', 'true')
    this.menuTarget.classList.remove('hidden')
  }

  hide(event) {
    this.buttonTarget.setAttribute('aria-expanded', 'false')
    this.menuTarget.classList.add('hidden')
}

closeToast(event) {
  console.log('Toast is closing');
  this.buttonTarget.setAttribute('aria-expanded', 'false')
  this.menuTarget.classList.add('hidden')
  //<% flash.clear %>
}
}
