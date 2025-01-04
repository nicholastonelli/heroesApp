import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['openSidebarButton', 'sidebar', 'closeButton', 'ariaDiv']
  connect() {}

  openSidebar(e){
    e.preventDefault()
    this.ariaDivTarget.setAttribute('aria-hidden', 'false')
    this.sidebarTarget.classList.remove('hidden')
    this.sidebarTarget.classList.add('flex')
  }

  closeSidebar(e){
    e.preventDefault()
    this.ariaDivTarget.setAttribute('aria-hidden', 'true')
    this.sidebarTarget.classList.remove('flex')
    this.sidebarTarget.classList.add('hidden')
  }
}
