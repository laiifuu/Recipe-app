// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

function menuToggle(e) {
  if (e.target.textContent === 'menu') {
    e.target.textContent = 'cancel';
  } else {
    e.target.textContent = 'menu';
  }
  listItems.classList.toggle('disappear')
};

const menuBtn = document.querySelector('.material-symbols-outlined');
const listItems = document.querySelector('.nav-list')

menuBtn.addEventListener('click', menuToggle);


