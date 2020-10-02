[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/e71az/private-events" style="text-decoration: none;">
  <figure align="center">
    <img src="app/assets/images/reserved.jpg" alt="Reserved logo" width="300" height="200">
    <figcaption>Creator: Andrew Bayda</figcaption>
  </figure>
  </a>

  <h2 align="center">Private Events Project</h2>

  <h3 align="center">Rails Project --> Private-Events<h3>
  <p align="center">
    <a href="https://github.com/e71az/private-events"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    -
    <a href="https://github.com/e71az/private-events/issues">Report a Bug</a>
    -
    <a href="https://github.com/e71az/private-events/issues">Request a Feature</a>
    -
  </p>
</p>

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
  * [Rules](#rules)
  * [Usage](#usage)
  * [Automated Test](#autoamted-test)
* [Contributors](#contributors)
* [Contributing](#contributing)
* [Acknowledgements](#acknowledgements)
* [License](#license)

<!-- ABOUT THE PROJECT -->
## About The Project

This is the **Private-Events** project where users are able to create events and choose **who** to invite based on the **Eventbrite** model. In this project we practiced a lot the **Rails Associations**, we also had to use **Active Records** to make some data queries.

## Restrictions

**Logged In**
* Only registered and logged in users can create events. They are refered to as **Creators**.

**Attendees**
* Only registered users can be invited to the event by Creators. They are refered to as **Attendees**

## Getting Started

To get a local copy up and running follow these simple example steps:

- Clone this repository into your local machine.
- Run:

```bash
  $ gem install bundler
```

- Run:

```bash
  $ bundle install
```

- Run

```bash
  $ rails db:migrate
```

- Run the rails server:

```bash
  $ rails server
```

- Enter in your web browser address bar:

    localhost:3000

- Create an account and navigate the webpage!

- Play with the app!

**Automated Test**
* Run the command and see the output
```
$ rspec
```

### Built With
This project was built using these technologies.
* Ruby
* Rspec
* Rubocop
* Capybara
* VsCode


## Potential future features
- To add some CSS styling

## Contributors

👤 **Elias Castañeda**

- Github: [@e71az](https://github.com/e71az)
- Linkedin: [@e71az](https://www.linkedin.com/in/eliasecasta/)

👤 **Daniel Sokil**

- Github: [@danielsokil](https://github.com/danielsokil)
- Linkedin: [@danielsokil](www.linkedin.com/in/daniel-sokil)

## :handshake: Contributing
Contributions, issues and feature requests are welcome!
Feel free to check the [issues page](https://github.com/e71az/private-events/issues)

## Show your support
Give a :star: if you like this project!

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/e71az/private-events.svg?style=flat-square
[contributors-url]: https://github.com/e71az/private-events/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/e71az/private-events
[forks-url]: https://github.com/e71az/private-events/network/members
[stars-shield]: https://img.shields.io/github/stars/e71az/private-events
[stars-url]: https://github.com/e71az/private-events/stargazers
[issues-shield]: https://img.shields.io/github/issues/e71az/private-events.svg?style=flat-square
[issues-url]: https://github.com/e71az/private-events/issues

## 📝 License

This project is [MIT](https://opensource.org/licenses/MIT) licensed.
