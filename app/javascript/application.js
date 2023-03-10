// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// function menuToggle(e) {
//   if (e.target.textContent === 'menu') {
//     e.target.textContent = 'cancel';
//   } else if (e.target.textContent === 'cancel') {
//     e.target.textContent = 'menu';
//   } else {
//     e.target.textContent = 'cancel';
//   }
//   listItems.classList.toggle('disappear')
// };

// const menuBtn = document.querySelector('.material-symbols-outlined');
// const listItems = document.querySelector('.list-container')
// document.addEventListener('turbolink:load', () => {
//   menuBtn.addEventListener('click', menuToggle);
// })

let openPopupBtn = document.querySelector('.gen-popup');
openPopupBtn.addEventListener('click', (e) => {
  let popupSection = document.querySelector('.popup')
  if (popupSection.classList.contains('hidden')){
    popupSection.classList.remove('hidden');
  }
})

let closePopupBtn = document.querySelector('.close-popup');
closePopupBtn.addEventListener('click', (e) => {
  let popupSection = document.querySelector('.popup')
  if (!popupSection.classList.contains('hidden')){
    popupSection.classList.add('hidden');
  }
})

  


