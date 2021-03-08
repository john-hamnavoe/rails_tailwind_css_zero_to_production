# README

**Introduction**

This basic rails 6 project has implemented the landing page from the ["Tailwind CSS: From Zero to Production"](https://www.youtube.com/watch?v=elgqxmdVms8&list=PL5f_mz_zU5eXWYDXHUDOLBE0scnuJofO0&index=1) screencast series.

The ["reposistory for the screencast"](https://github.com/tailwindlabs/tailwindcss-from-zero-to-production) implements it using react.

The landing page should look exactly as it does in the screencasts except we are using rails. Below in the Notes section have tried to capture the main differences. 

**Tech**

* Rails 6.1
* Tailwind 2.0

**Running Project**

* Clone Project
* Create database `rails db:create db:migrate`
* Use foreman to run `foreman start -f procfile.dev`
* Navigate to `http://localhost:3000/`

**Notes on Lessons for Rails Project**

***Lesson 1: Setting up Tailwind***

The rails project is set up based on a [template](https://github.com/john-hamnavoe/bootstrapping_rails_tailwind) I use that sets up tailwind which in turn is based on ["kickoff template"](https://github.com/justalever/kickoff_tailwind).

***Lesson 2: Setting up Tailwind***

All images for the project have been added to asset/images.

Project uses image_tag helper through out.

Project has one controller `home` and it has index route. Most of the landing page is therefore in `home\index.html`.

***Lesson 3: Responsive Design***

The landing page is in `home\index.html`.

***Lesson 4: Hover Focus and Other States***

`tailwind.config.js` is in the `app\javascript\stylesheets` directory.

***Lesson 5: Composing Utilities with @apply***

The button styles are in file `app\javascript\stylesheets\components\_buttons.scss` referenced in `application.scss` which also has the references to the tailwind css files.

***Lesson 6: Extracting resusable components***

The card component can be found in `shared\_destination_card.html.erb` and it is called by render method in the `home\index.html`. You may want to create helper for this in your app. 

The data is generated in the `index` method of the `home_controller` using OpenStruct. 

***Lesson 7: Customizing your design system***

`tailwind.config.js` is in the `app\javascript\stylesheets` directory has the custom colors. 

***Lesson 8: Optimizing for Production***

There is `postcss.config.js` in root directory of the project. To see difference in purged and non-purged first run `bin\webpacker` see the size of the application.js is over 5MB. In the `tailwind.config.js` on uncomment the line that says `// enabled: true, //comment this in to see purge in development` in the purge section. Run `bin\webpacker` again you will see the file is much smaller.



