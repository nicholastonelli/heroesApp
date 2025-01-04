import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["button", "submenu", "triangle"]
  connect() {}

  toggleSubmenu(event) {
    event.preventDefault()

    if (this.buttonTarget.getAttribute("aria-expanded") == "false") {
      this.show()
    } else {
      this.hide(null)
    }
  }

  rotateTriangleDown(){
    this.triangleTarget.classList.remove("text-gray-300")
    this.triangleTarget.classList.add("text-gray-400")
    this.triangleTarget.classList.add("rotate-90")
  }

  rotateTriangleSide(){
    this.triangleTarget.classList.remove("text-gray-400")
    this.triangleTarget.classList.add("text-gray-300")
    this.triangleTarget.classList.remove("rotate-90")
  }

  show() {
    this.buttonTarget.setAttribute("aria-expanded", "true")
    this.submenuTarget.classList.remove("hidden")
    this.rotateTriangleDown()
  }

  hide(event) {
    this.buttonTarget.setAttribute("aria-expanded", "false")
    this.submenuTarget.classList.add("hidden")
    this.rotateTriangleSide()
  }
}
