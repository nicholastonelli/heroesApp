import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["indicator", "input", ]
  static values = {
    url: String
  }

  connect() {}

  styleValidInput() {
    this.inputTarget.removeAttribute("class")
    this.inputTarget.classList.add(
      "max-w-lg",
      "block",
      "w-full",
      "shadow-sm",
      "pr-10",
      "focus:ring-indigo-500",
      "focus:border-indigo-500",
      "sm:max-w-xs",
      "sm:text-sm",
      "border-gray-300",
      "rounded-md"
    )
  }

  styleValidIndicator(data){
    this.indicatorTarget.classList.remove("inline-flex")
    this.indicatorTarget.classList.remove("hidden")
    this.indicatorTarget.classList.add("inline-flex")
    this.indicatorTarget.classList.remove("bg-red-100", "text-red-800")
    this.indicatorTarget.classList.add("bg-green-100", "text-green-800")
    this.indicatorTarget.innerHTML = (data.type)
  }

  styleInvalidIndicator(){
    this.indicatorTarget.classList.remove("inline-flex")
    this.indicatorTarget.classList.remove("hidden")
    this.indicatorTarget.classList.add("inline-flex")
    this.indicatorTarget.classList.remove("bg-green-100", "text-green-800")
    this.indicatorTarget.classList.add("bg-red-100", "text-red-800")
    this.indicatorTarget.innerHTML = ("ERROR")
  }

  styleInvalidInput() {
    this.inputTarget.removeAttribute("class")
    this.inputTarget.classList.add(
      "max-w-lg",
      "block",
      "w-full",
      "shadow-sm",
      "pr-10",
      "border-red-300",
      "text-red-900",
      "placeholder-red-300",
      "focus:outline-none",
      "focus:ring-red-500",
      "focus:border-red-500",
      "sm:max-w-xs",
      "rounded-md",
      "sm:text-sm"
    )
  }

  disableSubmitButton(){
   document.querySelector("input[type='submit']").setAttribute('disabled', 'disabled')
  }

  enableSubmitButton(){
    document.querySelector("input[type='submit']").removeAttribute('disabled')
   }

  resetIndicators() {
// reset to default and hide indicator while typing
    this.styleValidInput()
    this.indicatorTarget.classList.remove("inline-flex")
    this.indicatorTarget.classList.remove("hidden")
    this.indicatorTarget.classList.add("hidden")
  }

  checkAddress() {
    // add text to be checked as ending on URL, check in JSON response for failure
    //fetch(`/addresses/check_address_text?address[text]=${this.inputTarget.value}` ).then(response => console.log(response.text())

    
    // State      |     Indicator                      |     Input          |
    // blank      |    no problem                      |   no problem       |
    // ip is good | green, good, type                  |   no problem       |
    // ip is bad  | red, bad, error invalid/!/triangle |   error indication |

  if ( this.inputTarget.value == "") {
    
  } else {
    fetch(`/${this.urlValue}/check_address_text?text=${this.inputTarget.value}`)
      .then((response) => response.json())
      .then((data) => {  
                        if (data.valid == true ) {
                          this.styleValidInput()
                          this.styleValidIndicator(data)
                          this.enableSubmitButton()
                        } else {
                          this.styleInvalidInput()
                          this.styleInvalidIndicator()
                          this.disableSubmitButton()
                        }
                      }
    )
   }
  }
}
