const backToTop = document.querySelector("[data-back-to-top]");
if (backToTop) {
  const toggle = () => backToTop.classList.toggle("is-hidden", window.scrollY < 400);
  window.addEventListener("scroll", toggle, { passive: true });
  backToTop.addEventListener("click", (e) => { e.preventDefault(); window.scrollTo({ top: 0, behavior: "smooth" }); });
  toggle();
}
