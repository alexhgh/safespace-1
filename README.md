# [Safe Space](https://safespace-staging.herokuapp.com)

An anonymous chatting platform for UC Berkeley students suffering from mental health


## Getting Started

1. Clone repository
   ```
   git clone git@github.com:mehtaculous/safespace.git
   ```

2. Install gems
   ```
   bundle install --without production
   ```

3. Run migrations
   ```
   rake db:migrate
   ```

4. Run it locally
   ```
   rails s
   ```

5. Clone Heroku repo
   ```
   heroku git:clone -a safespace-staging
   ```

## Contributing

1. Create new feature branch
   ```
   git checkout -b feature-branch-name
   ```

2. Push changes to remote branch and create pull request
   ```
   git push origin feature-branch-name
   ```
   #### *Issue pull request to merge feature branch to master*

3. Make changes and then merge to master branch
   ```
   git checkout master
   git merge feature-branch-name
   ```

4. Pull merged changes from remote master branch to local environment
   ```
   git pull origin master
   ```

5. Push changes to staging and run database migrations
   ```
   git push staging master
   heroku run rake db:migrate --remote staging
   ```
