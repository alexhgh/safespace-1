# [Safe Space]()

An anonymous chatting platform for UC Berkeley students suffering from mental health


## Getting Started

1. Clone Repo
   ```
   git clone git@github.com:mehtaculous/clutter.git
   ```

2. Install Gems
   ```
   bundle install --without production
   ```

3. Run Migrations
   ```
   rake db:migrate
   ```

4. Configure Sendgrid Email **([Documentation](https://devcenter.heroku.com/articles/sendgrid))**

   ##### config/application.yml
   ```
   SENDGRID_USERNAME: example@heroku.com
   SENDGRID_PASSWORD: 12345678abcdefgh
   ```

5. Run It Locally
   ```
   rails s
   ```
