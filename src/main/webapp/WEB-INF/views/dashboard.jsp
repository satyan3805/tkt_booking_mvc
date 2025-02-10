<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.sat.tmf.tkt.entity.User" %>
<%@ page import="com.sat.tmf.tkt.entity.Movie" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Ticket Booking Dashboard</title>
    <link rel="stylesheet" href="<c:url value='/css/styles.css'/>">
</head>
<body>
    <!-- Header Section -->
    <header>
        <div class="logo">MovieBooking</div>
        <nav>
            <a href="<c:url value='/dashboard'/>">Home</a>
            <a href="<c:url value='/movies'/>">Movies</a>
            <a href="<c:url value='/showtimes'/>">Showtimes</a>
            <a href="<c:url value='/bookings'/>">Bookings</a>
            <a href="<c:url value='/logout'/>">Logout</a>
        </nav>
    </header>

    <!-- Main Container -->
    <div class="container">
        <!-- Sidebar -->
        <aside class="sidebar">
            <ul>
                <li><a href="<c:url value='/dashboard'/>">Home</a></li>
                <li><a href="<c:url value='/movies'/>">Movies</a></li>
                <li><a href="<c:url value='/showtimes'/>">Showtimes</a></li>
                <li><a href="<c:url value='/bookings'/>">Bookings</a></li>
                <li><a href="<c:url value='/account'/>">Account Settings</a></li>
            </ul>
        </aside>

        <!-- Dashboard Main Content -->
        <main class="dashboard">
            <h1>Welcome, ${currUser.firstName} ${currUser.lastName}!</h1>
            <p>Find and book your favorite movie tickets easily!</p>

            <!-- Featured Movies Section -->
            <section class="featured-movies">
                <h2>Featured Movies</h2>
                <div class="movie-cards">
                    <!-- Example of iterating over movies -->
                    <c:forEach var="movie" items="${movies}">
                        <div class="movie-card">
                            <img src="" onclick="" />
                            <h3>${movie.name}</h3>
                            <p>Rating: ${movie.rating}</p>
                            <button onclick="window.location.href='<c:url value='/book/${movie.id}'/>'">Book Tickets</button>
                        </div>
                    </c:forEach>
                </div>
            </section>

            <!-- Quick Actions Section -->
            <section class="quick-actions">
                <button onclick="window.location.href='<c:url value='/book'/>'">Book Tickets</button>
                <button onclick="window.location.href='<c:url value='/booking-history'/>'">View Booking History</button>
            </section>

            <!-- Upcoming Movies Section -->
            <section class="upcoming-movies">
                <h2>Upcoming Movies</h2>
                <div class="upcoming-movie-cards">
                    <!-- Example of upcoming movies -->
                    <c:forEach var="upcomingMovie" items="${upcomingMovies}">
                        <div class="movie-card">
                            <img src="<c:url value='/images/${upcomingMovie.poster}'/>" alt="${upcomingMovie.name}">
                            <h3>${upcomingMovie.name}</h3>
                            <p>Release Date: ${upcomingMovie.releaseDate}</p>
                            <button onclick="window.location.href='<c:url value='/book/${upcomingMovie.id}'/>'">Pre-book Tickets</button>
                        </div>
                    </c:forEach>
                </div>
            </section>
        </main>
    </div>

    <!-- Footer -->
    <footer>
        <p>Contact us | Privacy Policy | Terms & Conditions</p>
    </footer>
</body>
</html>
