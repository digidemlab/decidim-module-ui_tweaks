let backToTop = null;

const toggle = () => {
  if (backToTop) backToTop.classList.toggle("is-hidden", window.scrollY < 400);
};

const handleClick = (e) => {
  e.preventDefault();
  window.scrollTo({ top: 0, behavior: "smooth" });
};

const initBackToTop = () => {
  backToTop = document.querySelector("[data-back-to-top]");
  if (!backToTop) return;
  toggle();
};

window.addEventListener("scroll", toggle, { passive: true });
document.addEventListener("click", (e) => {
  if (e.target.closest("[data-back-to-top]")) handleClick(e);
});
document.addEventListener("DOMContentLoaded", initBackToTop);
document.addEventListener("turbo:load", initBackToTop);
