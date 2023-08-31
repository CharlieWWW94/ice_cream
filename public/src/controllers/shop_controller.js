import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'details', 'form' ]

  connect() {
    console.log('shop controller')
  }

  displayForm() {
    this.detailsTarget.style.display = 'none';
    this.formTarget.style.display = 'block';
  }

  hideForm() {
    this.detailsTarget.style.display = 'block'; 
    this.formTarget.style.display = 'none';
  }

  async submitUpdate(event) {
    event.preventDefault();
    const element = event.target
    const { dataset: { shopId } } = element
    const formData = new FormData(element);
    const formDataObj = Object.fromEntries(formData.entries());
    const shopJson = JSON.stringify({ shop: formDataObj })
    const response = await fetch(
      `http://127.0.0.1:2300/shops/${shopId}`, {
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        method: 'PATCH',
        body: shopJson
      }
    )

    window.location.reload();
  }



}