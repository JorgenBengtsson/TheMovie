import React, { Component } from "react";

import MovieList from "./components/MovieList";
import BookTicket from "./components/BookTicket";
import Login from "./components/Login";
import { ticketBooking } from "./utilities/Booking";

export default class App extends Component {
  constructor() {
    super();
    this.state = {
      bookedMovieId: "",
      bookedTickets: "",
      loggedIn: false,
      accessToken: {}
    };
  }

  bookTickets(movieId, tickets) {
    var bookingConfirmation = ticketBooking(
      movieId,
      tickets,
      this.state.accessToken
    );
    this.setState({
      bookedMovieId: bookingConfirmation.movieId,
      bookedTickets: bookingConfirmation.tickets
    });
  }

  handleAccessToken(token) {
    this.setState({ loggedIn: true, accessToken: token });
  }

  render() {
    return (
      <div>
        {!this.state.loggedIn ? (
          <Login loggedIn={token => this.handleAccessToken(token)} />
        ) : (
          <></>
        )}
        <MovieList />
        {this.state.loggedIn ? (
          this.state.bookedMovieId === "" ? (
            <BookTicket
              bookTickets={(movieId, tickets) =>
                this.bookTickets(movieId, tickets)
              }
            />
          ) : (
            <div>
              Booking {this.state.bookedTickets} tickets for movie number{" "}
              {this.state.bookedMovieId}
            </div>
          )
        ) : (
          <></>
        )}
      </div>
    );
  }
}
