# accesslint.com

This is the AccessLint website. It’s built with [Middleman].

[Middleman]: https://www.middlemanapp.com/

## Setup

1. Get the code:

    ```
    git clone https://github.com/accesslint/www.accesslint.com.git
    ```

1. Set up your machine:

    ```
    bin/setup
    ```

1. Run the local server:

    ```
    bundle exec middleman
    ```

    ```
    open http://localhost:4567
    ```

## Authentication and Reviews in Development

If you want to authenticate and post Reviews from your development environment,
you'll need to run the AccessLint app with `ngrok` and then point the login url
to that url by setting `GIT_HUB_LOG_IN_URL` in `.env` and GitHub App settings.

1. Run `ngrok http localhost:5000`

1. Copy ngrok url from the previous step (looks like https://<example>.ngrok.io)

1. Set ngrok url at https://github.com/organizations/AccessLint/settings/apps/accesslint-development

1. Set ngrok url in path/to/development/app.accesslint.com/.env

1. Set ngrok url in path/to/development/www.accesslint.com/.env

1. Run your development servers for www and app.

Now when you visit localhost:4567 and login, you'll be redirected to your
development instance of app.accesslint.com via the ngrok url.

## Hosting & Deployment

The website is hosted on [Netlify], and is automatically built and deployed when
changes are pushed to the `master` branch.

[Netlify]: https://www.netlify.com/
