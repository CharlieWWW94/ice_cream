import { Controller } from "@hotwired/stimulus";

export default class extends Controller {


  connect() {
    console.log('shops controller')
  }

  async delete(event) {
    const element = event.target
    const { dataset: { shopId } } = element
    const response = await fetch(
      `http://127.0.0.1:2300/shops/${shopId}`, {
        method: 'DELETE'
      }
    )
    // Replace with display none if status 200?
    window.location.reload()
  }

}