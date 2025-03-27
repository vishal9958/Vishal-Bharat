
document.getElementById('search-btn').addEventListener('click', function () {
          const travelMode = document.getElementById('travel-mode').value;
          const from = document.getElementById('from-input').value;
          const to = document.getElementById('to-input').value;
          const date = document.getElementById('date-input').value;
          const people = document.getElementById('people-input').value;

          // Simple Validation
          if (!from || !to || !date || !people) {
              alert("Please fill in all fields!");
              return;
          }

          const urlParams = `from=${encodeURIComponent(from)}&to=${encodeURIComponent(to)}&date=${date}&people=${people}`;
          if (travelMode === 'bus') {
              window.location.href = `bookBus.jsp?${urlParams}`;
          } else if (travelMode === 'train') {
              window.location.href = `bookTrain.jsp?${urlParams}`;
          } else {
              window.location.href = `bookFlight.jsp?${urlParams}`;
          }
      });
const filterButtons = document.querySelectorAll('.filter-btn');
const cards = document.querySelectorAll('.card');

filterButtons.forEach(btn => {
    btn.addEventListener('click', () => {
        document.querySelector('.filter-btn.active').classList.remove('active');
        btn.classList.add('active');
        const filter = btn.getAttribute('data-filter');

        cards.forEach(card => {
            if (filter === 'all' || card.classList.contains(filter)) {
                card.style.display = 'block';
            } else {
                card.style.display = 'none';
            }
        });
    });
});
/**
 * 
 */