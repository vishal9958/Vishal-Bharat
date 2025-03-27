<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Vishal Bharat 🌍</title>
  <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700;900&display=swap" rel="stylesheet">
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
  
      <link rel="stylesheet" href="destination.css">
  
</head>
<body>

  <header>
    <div class="logo">Vishal Bharat🌍</div>
    <nav>
      <a href="index.jsp">Home</a>
      <a href="destination.jsp">Destinations</a>
      <a href="TripPlanner.jsp">Trip Planner</a>
      <a href="contact.jsp">Contact</a>
      <a href="login.jsp">Login</a>
    </nav>
  </header>

  <section class="hero-section">
  <div class="hero-text">
    <p style="color:#ff9f47; font-weight: 600;">Know Before You Go ✈️</p>
    <h1>Explore <span>the world</span> together</h1>
    <p>We always make our customers happy by providing as many choices as possible.</p>

   <form action="FestivalSearchServlet" method="get" class="search-box">
  <input type="text" name="keyword" placeholder="Search Festival, Month or Location..." required />
  
  <input type="date" name="travelDate" />
  
  <select name="guests">
    <option value="" disabled selected>No. of Guests</option>
    <option value="1">1 Guest</option>
    <option value="2">2 Guests</option>
    <option value="3">3+ Guests</option>
  </select>

  <button type="submit" class="search-btn">🔍 Search</button>
</form>

    <div class="hero-images">
      <img src="https://images.unsplash.com/photo-1528901166007-3784c7dd3653" alt="Nature 1">
      <img src="https://images.unsplash.com/photo-1506744038136-46273834b3fb" alt="Nature 2">
      <img src="https://images.unsplash.com/photo-1507525428034-b723cf961d3e" alt="Nature 3">
    </div>
    </div>
  </section>

  <section class="destination-section">
    <div class="destination-section-heading">
      <h2>Top Festival Destinations</h2>
      <p>Explore some of the most breathtaking and unforgettable places around the world for your next adventure.</p>
    </div>
    <div class="destination-cards-wrapper">
      <div class="destination-card">
        <img src="pics/diwali.webp" alt="diwali">
        <div class="card-content">
          <h4>DIWALI</h4>
          <p> Festival of lights, celebrated with diyas, fireworks, and sweets.</p>
          <a href="details.jsp?title=DIWALI&price=5500&img=pics/diwali.webp" class="read-btn" style="
    display: inline-block;
    background-color: #ff6b00;
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
    font-weight: bold;
    transition: background-color 0.3s ease;
    font-family: Arial, sans-serif;
">Read Now</a>
          
        </div>
      </div>
      <div class="destination-card">
        <img src="pics/holi.webp" alt="holi">
        <div class="card-content">
          <h4>HOLI</h4>
          <p> Festival of colors, joyfully celebrated with colors, water, and sweets.</p>
           <a href="details.jsp?title=HOLI&price=5500&img=pics/holi.webp" class="read-btn" style="
    display: inline-block;
    background-color: #ff6b00;
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
    font-weight: bold;
    transition: background-color 0.3s ease;
    font-family: Arial, sans-serif;
">Read Now</a>
        </div>
      </div>
      <div class="destination-card">
        <img src="pics/bihu.webp" alt="bihu">
        <div class="card-content">
          <h4>BIHU</h4>
          <p>Assamese new year, marked by Bihu dance, music and feasting.</p>
           <a href="details.jsp?title=BIHU&price=5500&img=pics/bihu.webp" class="read-btn" style="
    display: inline-block;
    background-color: #ff6b00;
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
    font-weight: bold;
    transition: background-color 0.3s ease;
    font-family: Arial, sans-serif;
">Read Now</a>
        </div>
      </div>
      <div class="destination-card">
        <img src="pics/navratri.webp" alt="navratri">
        <div class="card-content">
          <h4>NAVRATRI</h4>
          <p> 9 nights of dance (Garba and Dandiya), worshipping different avatars of Goddess Durga.</p>
           <a href="details.jsp?title=NAVRATRI&price=5500&img=pics/navratri.webp" class="read-btn" style="
    display: inline-block;
    background-color: #ff6b00;
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
    font-weight: bold;
    transition: background-color 0.3s ease;
    font-family: Arial, sans-serif;
">Read Now</a>
        </div>
      </div>
    </div>
  </section>
  <section class="destination-section">
    <div class="destination-cards-wrapper">
      <div class="destination-card">
        <img src="pics/ganesh_chaturti.webp" alt="ganesh_chaturti">
        <div class="card-content">
          <h4>GANESH CHATURTI</h4>
          <p>10-day celebration of Lord Ganesha with idol immersion.</p>
           <a href="details.jsp?title=GANESH CHATURTI&price=5500&img=pics/ganesh_chaturti.webp" class="read-btn" style="
    display: inline-block;
    background-color: #ff6b00;
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
    font-weight: bold;
    transition: background-color 0.3s ease;
    font-family: Arial, sans-serif;
">Read Now</a>
        </div>
      </div>
      <div class="destination-card">
        <img src="pics/makar_sankranti.webp" alt="makar_sankranti">
        <div class="card-content">
          <h4>MAKAR SANKRANTI</h4>
          <p>A tropical paradise with beaches, temples, and rice fields.</p>
           <a href="details.jsp?title=MAKAR SANKRANTI&price=5500&img=pics/makar_sankranti.webp" class="read-btn" style="
    display: inline-block;
    background-color: #ff6b00;
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
    font-weight: bold;
    transition: background-color 0.3s ease;
    font-family: Arial, sans-serif;
">Read Now</a>
        </div>
      </div>
      <div class="destination-card">
        <img src="pics/ram_navami.webp" alt="Dubai">
        <div class="card-content">
          <h4>RAM NAVAMI</h4>
          <p>Birth of Lord Rama, celebrated with prayers and processions</p>
           <a href="details.jsp?title=RAM NAVAMI&price=5500&img=pics/ram_navami.webp" class="read-btn" style="
    display: inline-block;
    background-color: #ff6b00;
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
    font-weight: bold;
    transition: background-color 0.3s ease;
    font-family: Arial, sans-serif;
">Read Now</a>
        </div>
      </div>
      <div class="destination-card">
        <img src="pics/chhath.webp" alt="New York">
        <div class="card-content">
          <h4>CHHATH</h4>
          <p>Dedicated to Sun God with river offerings and rituals.</p>
           <a href="details.jsp?title=CHHATH&price=5500&img=pics/chhath.webp" class="read-btn" style="
    display: inline-block;
    background-color: #ff6b00;
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
    font-weight: bold;
    transition: background-color 0.3s ease;
    font-family: Arial, sans-serif;
">Read Now</a>
        </div>
      </div>
    </div>
  </section>

  <section class="features-section">
    <div class="feature-card">
      <img src="https://cdn-icons-png.flaticon.com/128/869/869869.png" width="50">
      <h3>Calculate Weather</h3>
      <p>We make plans according to upcoming weather.</p>
    </div>
    <div class="feature-card">
      <img src="https://cdn-icons-png.flaticon.com/128/2659/2659360.png" width="50">
      <h3>Best Tour Guide</h3>
      <p>Experienced guides with 12+ years expertise.</p>
    </div>
    <div class="feature-card">
      <img src="https://cdn-icons-png.flaticon.com/128/2659/2659388.png" width="50">
      <h3>Customization</h3>
      <p>Outstanding services customized to your needs.</p>
    </div>
  </section>
  
  <jsp:include page="footer.jsp" />
  

 

</body>
</html>
