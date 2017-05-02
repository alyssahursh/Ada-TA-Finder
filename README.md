# Ada TA Finder
A small Rails application to help connect available Ada TAs and students with questions. In progress.

![Tutoring](/ada-tutors.png?raw=true "Tutoring")

## Technologies
* Primary language: Ruby 2.3.1
* Framework: Rails 4.7.2
* HTML5/CSS3
* Authentication: Github OAuth

## How does it work
* Users can create an account with Github
* When a user logs in for the first time, they will select whether they are a student or a tutor
* Students will be directed to a page that shows which tutors are working, which are currently available for questions, and whether they are in the Ada building or available remotely. This page refreshes automatically every 30 seconds.
* Tutors will be directed to a profile editing page where they can update their contact information and set their status (Working vs Not working, Available vs Aot available, and At Ada vs Remotely).

## Work that remains to be done
* Tutors cannot yet set their status.
* Students should be able to convert their accounts to tutoring (for after they graduate)
