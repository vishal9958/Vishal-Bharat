<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Vishal Bharat 🌍</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="tripplanner.css">
</head>
<body>

<!-- Navbar -->
<nav class="navbar">
    <div class="logo">Vishal Bharat 🌍</div>
    <ul>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="destination.jsp">Destinations</a></li>
        <li><a href="TripPlanner.jsp">Trips</a></li>
        <li><a href="contact.jsp">Contact</a></li>
    </ul>
</nav>

<!-- Hero Section -->
<header class="hero-section">
    <h1>EXPLORE BEAUTIFUL PLACES</h1>
    <div class="search-bar">
        <select id="travel-mode">
            <option value="bus">🚌 Bus</option>
            <option value="train">🚆 Train</option>
            <option value="flight">✈️ Flight</option>
        </select>
        <input type="text" placeholder="From: Warsaw, Poland" id="from-input">
        <input type="text" placeholder="To: Ontario, Canada" id="to-input">
        <input type="date" id="date-input">
        <input type="text" placeholder="2 People" id="people-input">
        <button id="search-btn">Search</button>
    </div>
</header>

<!-- Filter Buttons -->
<section class="filter-buttons">
    <button class="filter-btn active" data-filter="all">All</button>
    <button class="filter-btn" data-filter="popular">Popular 🔥</button>
    <button class="filter-btn" data-filter="mountains">Mountains ⛰️</button>
    <button class="filter-btn" data-filter="islands">Beaches🏝️</button>
    <button class="filter-btn" data-filter="deserts">Deserts 🏜️</button>
</section>

<!-- Destination Cards -->
<section class="destination-cards">

    <div class="card popular islands">
        <img src="pics/pondicherry.webp" alt="Pondicherry">
        <a href="details.jsp?place=Pondicherry" class="card-link">
            <div class="card-details">
                <div class="card-header">
                    <h4>Pondicherry</h4>
                    <span class="price">₹2,700</span>
                </div>
                <p class="date">Mar 20 - Mar 28</p>
            </div>
        </a>
    </div>

    <div class="card popular mountains">
        <img src="pics/pelling.webp" alt="Pelling">
        <a href="details.jsp?place=Pelling" class="card-link">
            <div class="card-details">
                <div class="card-header">
                    <h4>Pelling</h4>
                    <span class="price highlight">₹6,000 🔥</span>
                </div>
                <p class="date">Mar 15 - Mar 21</p>
            </div>
        </a>
    </div>

    <div class="card popular deserts">
        <img src="pics/osian-desert.webp" alt="Osian Desert">
        <a href="details.jsp?place=Osian%20Desert" class="card-link">
            <div class="card-details">
                <div class="card-header">
                    <h4>Osian Desert</h4>
                    <span class="price">₹1,900</span>
                </div>
                <p class="date">Apr 3 - Apr 10</p>
            </div>
        </a>
    </div>

    <div class="card islands">
        <img src="pics/puri.webp" alt="Puri">
        <a href="details.jsp?place=Puri" class="card-link">
            <div class="card-details">
                <div class="card-header">
                    <h4>Puri</h4>
                    <span class="price">₹5,000</span>
                </div>
                <p class="date">Apr 1 - Apr 10</p>
            </div>
        </a>
    </div>

    <div class="card mountains">
        <img src="pics/koloriang.webp" alt="Koloriang">
        <a href="details.jsp?place=Koloriang" class="card-link">
            <div class="card-details">
                <div class="card-header">
                    <h4>Koloriang</h4>
                    <span class="price">₹5,000</span>
                </div>
                <p class="date">Apr 7 - Apr 16</p>
            </div>
        </a>
    </div>

    <div class="card mountains">
        <img src="pics/champawat.webp" alt="Champawat">
        <a href="details.jsp?place=Champawat" class="card-link">
            <div class="card-details">
                <div class="card-header">
                    <h4>Champawat</h4>
                    <span class="price">₹5,000</span>
                </div>
                <p class="date">Apr 7 - Apr 16</p>
            </div>
        </a>
    </div>

    <div class="card deserts">
        <img src="pics/hunder-desert.webp" alt="Hunder Desert">
        <a href="details.jsp?place=Hunder%20Desert" class="card-link">
            <div class="card-details">
                <div class="card-header">
                    <h4>Hunder Desert</h4>
                    <span class="price">₹2,100</span>
                </div>
                <p class="date">Apr 14 - Apr 20</p>
            </div>
        </a>
    </div>

    <div class="card deserts">
        <img src="pics/cold-desert.webp" alt="Cold Desert">
        <a href="details.jsp?place=Cold%20Desert" class="card-link">
            <div class="card-details">
                <div class="card-header">
                    <h4>Cold Desert</h4>
                    <span class="price">₹2,100</span>
                </div>
                <p class="date">Apr 14 - Apr 20</p>
            </div>
        </a>
    </div>

</section>
<jsp:include page="footer.jsp" />



<script src="tripplanner.js"></script>
</body>
</html>
