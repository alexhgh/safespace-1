# [SafeSpace](https://safespace-staging.herokuapp.com)

An anonymous chat platform empowering UC Berkeley students to share their experiences pursuing mental wellness


## Getting Started

1. Clone repository
   ```
   git clone git@github.com:mehtaculous/safespace.git
   ```

2. Install gems
   ```
   bundle install --without production
   ```

3. Run migrations and seed data
   ```
   rails db:migrate
   rails db:seed
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
   git push -u origin feature-branch-name
   ```

3. Make changes before merging to master branch
   ```
   git checkout master
   git merge feature-branch-name
   ```

4. Pull changes from remote master branch to local environment
   ```
   git pull origin master
   ```

5. Push changes to staging and run database migrations
   ```
   git push staging master
   heroku run rails db:migrate --remote staging
   ```
