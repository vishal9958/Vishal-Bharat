<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vishal Bharat 🌍</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    
</head>

<body>
    <header>
        <nav>
            <h4>Vishal Bharat 🌍</h4>
            <ul id="menu_bx">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="destination.jsp">Destinations</a></li>
                <li><a href="TripPlanner.jsp">Trip Planner</a></li>
                <li><a href="contact.jsp">Contact</a></li>
                <li><a href="login.jsp">Sign In</a></li>  
                        
            </ul>
            <i class="bi bi-three-dots"></i>
        </nav>

        <div class="content">
            <div class="cont_bx">
                <h1>The right destination for you and your family</h1>
                <p>Creative taglines have the capability of capturing the attention of potential customers.</p>
            </div>
            <div class="trip_bx">
                <form action="SearchServlet" method="post" class="search_bx">
                    <div class="card">
                        <h4>Location <i class="bi bi-caret-down-fill"></i></h4>
                        <input type="text" name="location" placeholder="Enter your destination" required>
                    </div>
                    <div class="card">
                        <h4>Date <i class="bi bi-caret-down-fill"></i></h4>
                        <input type="date" name="travelDate" required>
                    </div>
                    <div class="card">
                        <h4>People <i class="bi bi-caret-down-fill"></i></h4>
                        <input type="number" name="peopleCount" placeholder="How many People?" required>
                    </div>
                    <input type="submit" value="Explore Now">
                </form>

                <div class="travel_bx">
                    <h4><br>States to Travel</h4>
                    <div class="cards">
                        <div class="card">
                            <h3>🏙️ DELHI </h3>
                            <img src="pics/delhi.webp" alt="DELHI">
                            <div class="btn_city">
<a href="details.jsp?title=DELHI&price=5500&img=pics/delhi.webp">Read Now</a>
                                <h5> <br><span>5,500</span></h5>
                            </div>
                        </div>
                        <div class="card">
                            <h3>🏔️ UTTRAKHAND </h3>
                            <img src="pics/uttarakhand.webp" alt="UTTRAKHAND">
                            <div class="btn_city">
<a href="details.jsp?title=UTTRAKHAND&price=5500&img=pics/uttarakhand.webp">Read Now</a> 
 <h5> <br><span>5,500</span></h5>
                            </div>
                        </div>
                        <div class="card">
                            <h3>❄️ KASHMIR</h3>
                            <img src="pics/kashmir.webp" alt="KASHMIR">
                            <div class="btn_city">
<a href="details.jsp?title=KASHMIR&price=5500&img=pics/kashmir.webp">Read Now</a>
                                <h5><br><span>5,500</span></h5>
                            </div>
                        </div>
                        <div class="card">
                            <h3>🌆 MUMBAI</h3>
                            <img src="pics/mumbai.webp" alt="MUMBAI">
                            <div class="btn_city">
<a href="details.jsp?title=MUMBAI&price=5500&img=pics/mumbai.webp">Read Now</a>
                                <h5> <br><span>5,500</span></h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <div class="offers">
        <h1>Best Tour Package Offers for You</h1>
        <p>Choose your next destination</p>
        <div class="cards">
            <div class="card">
                <h3>Manali</h3>
                <div class="img_text">
                    <img src="pics/manali.webp" alt="Manali">
                    <h4>Included: Air/bus ticket, Hotel, Breakfast, Tours, pickup/drop</h4>
                </div>
                <div class="cont_bx">
                    <div class="price">
                        <div class="heart_chat">
                            <i class="bi bi-heart-fill"><span>86415</span></i>
                            <i class="bi bi-chat-fill"><span>4586</span></i>
                        </div>
                        <div class="info_price">
<a href="details.jsp?title=MANALI&price=6000&img=pics/manali.webp">More info</a>
                            <h4>6,000</h4>
                        </div>
                    </div>
                    <div class="dayes">4 Days<br>3 Night</div>
                </div>
            </div>

            <div class="card">
                <h3>Varanasi</h3>
                <div class="img_text">
                    <img src="pics/varanasi.webp" alt="Varanasi">
                    <h4>Included: Air/bus ticket, Hotel, Breakfast, Tours, pickup/drop</h4>
                </div>
                <div class="cont_bx">
                    <div class="price">
                        <div class="heart_chat">
                            <i class="bi bi-heart-fill"><span>8489</span></i>
                            <i class="bi bi-chat-fill"><span>4586</span></i>
                        </div>
                        <div class="info_price">
<a href="details.jsp?title=VARANASI&price=6000&img=pics/varanasi.webp">More info</a>
                            <h4>6,000</h4>
                        </div>
                    </div>
                    <div class="dayes">4 Days<br>3night</div>
                </div>
            </div>

            <div class="card">
                <h3>Darjeeling</h3>
                <div class="img_text">
                    <img src="pics/darjeeling.webp" alt="Darjeeling">
                    <h4>Included: Air/bus ticket, Hotel, Breakfast, Tours, pickup/drop</h4>
                </div>
                <div class="cont_bx">
                    <div class="price">
                        <div class="heart_chat">
                            <i class="bi bi-heart-fill"><span>86415</span></i>
                            <i class="bi bi-chat-fill"><span>4586</span></i>
                        </div>
                        <div class="info_price">
<a href="details.jsp?title=DARJEELING&price=6000&img=pics/darjeeling.webp">More info</a>
                            <h4>6,000</h4>
                        </div>
                    </div>
                    <div class="dayes">4 Days<br>3night</div>
                </div>
            </div>

            <div class="card">
                <h3>Jaipur</h3>
                <div class="img_text">
                    <img src="pics/jaipur.webp" alt="Jaipur">
                    <h4>Included: Air/bus ticket, Hotel, Breakfast, Tours, pickup/drop</h4>
                </div>
                <div class="cont_bx">
                    <div class="price">
                        <div class="heart_chat">
                            <i class="bi bi-heart-fill"><span>86415</span></i>
                            <i class="bi bi-chat-fill"><span>4586</span></i>
                        </div>
                        <div class="info_price">
<a href="details.jsp?title=JAIPUR&price=6000&img=pics/jaipur.webp">More info</a>
                            <h4>6,000</h4>
                        </div>
                    </div>
                    <div class="dayes">4 Days<br>3night</div>
                </div>
            </div>
        </div>
    </div>

    <div class="destination">
        <div class="des_bx">
            <h4>Our Destinations</h4>
            <p>Choose your next destination</p>
            <ul>
                <li>KOLKATA</li>
                <li>BENGLURU</li>
                <li>TAMIL NADU</li>
                <li>HIMACHAL</li>
                <li>UJJAIN</li>
                <li>ORRISA</li>
            </ul>
            <h6>Included: Air ticket, Hotel, Breakfast, Tours, Airport Transfer</h6>
<button onclick="location.href='destination.jsp'">MORE INFO</button>
        </div>

        <div class="img_bx">
            <img src="pics/collage.webp" alt="">
            <div class="msg">
                <div class="cont">
                    <h4>Travel with us</h4>
                    <div class="icon">
                        <i class="bi bi-heart-fill"><span>86415</span></i>
                        <i class="bi bi-chat-fill"><span>4586</span></i>
                    </div>
                </div>
            </div>
            <div class="msg">
                <div class="cont">
                    <h4>Enjoy Vacations</h4>
                    <div class="icon">
                        <i class="bi bi-heart-fill"><span>86415</span></i>
                        <i class="bi bi-chat-fill"><span>4586</span></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

   <footer>
    <h2>Subscribe to our Newsletter</h2>
    <p>Get the latest travel updates, exclusive offers, and inspiration directly in your inbox.</p>
    <form action="SubscribeServlet" method="post" class="input">
        <input type="email" name="email" placeholder="Enter your email" required>
        <button type="submit">Subscribe</button>
    </form>
    
</footer>
 <jsp:include page="footer.jsp" />


    <script src="index.js"></script>
</body>
</html>
