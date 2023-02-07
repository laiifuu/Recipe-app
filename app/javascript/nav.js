export function menuToggle(e) {
  if (e.target.textContent === 'menu') {
    e.target.textContent = 'cancel';
    // console.log(listItems)
    listItems.classList.add('disapper')
    // listItems.style.display = 'none';
  } else {
    e.target.textContent = 'menu';
    listItems.classList.add('appear')
  }
};

export const menuBtn = document.querySelector('.material-symbols-outlined');
export const listItems = document.getElementsByClassName('nav-list')
