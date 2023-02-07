// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
// import { menuBtn, menuToggle } from './nav'
export function menuToggle(e) {
  if (e.target.textContent === 'menu') {
    e.target.textContent = 'cancel';
  } else {
    e.target.textContent = 'menu';
  }
  listItems.classList.toggle('disappear')
};

export const menuBtn = document.querySelector('.material-symbols-outlined');
export const listItems = document.querySelector('.nav-list')

menuBtn.addEventListener('click', menuToggle);


