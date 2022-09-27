import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ['magic']

  connect() {
    console.log("connected");
  }
  
  // this method will display current change
  currentChange(event){
    this.magicTarget.value = event.target.value;
  }
  
  submit(){
    alert("You have submitted this form");
  }
}
