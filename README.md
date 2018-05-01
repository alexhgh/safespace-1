# [Safe Space](https://safespace-staging.herokuapp.com)

An anonymous chatting platform for UC Berkeley students suffering from mental health


## Getting Started

1. Clone Repo
   ```
   git clone git@github.com:mehtaculous/safespace.git
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
   SENDGRID_PASSWORD: abcdefg123456789
   ```

5. Run It Locally
   ```
   rails s
   ```

6. Create new feature branch
   ```
   git checkout -b feature-branch-name
   ```

7. Merge changes to master branch
   ```
   git checkout master
   git merge feature-branch-name
   ```

8. Pull merged changes from remote master branch to local environment
   ```
   git pull origin master
   ```
