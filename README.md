Read me:

Backend to my crypto coin tracking app. Currently I'm pinging a 3rd party API
for most of my data. It's coming from separate requests so I'm not sure how I'm
going to put it all together in a single object, so I  haven't yet migrated the
"coin" DB.

Link to ERD.
https://goo.gl/photos/2RKARnZrDAyU4NJ18


EDIT* Total rebuild!

New routes:
application
sign-up
change-password
users
posts
post/edit
post/new
post/comment/new
comment
comment/index
index

Tech: It's all out of the box rails here. No dependencies needed to install.

Thank god rails is easy to set up. I had to destroy and rebuild all my scaffolds
15 hours ago and was luckily able to get everything up and running.
I'm still not sure if my reltionships are totally solid, but everything seems to be working
for now. My only real challenge right now is getting my posts to edit. This may be a front or
back end issue.

Lessons learned: rebuilding my second ember app in 12 hours actually taught me a lot
about what I did wrong the first time with my original Trakr app. I ran into a lot of
the same errors I did on Trakr, but since my front end was bare bones at that point
and since I wasn't using third party API data to try to build an object for persistence
I was able to much more easily trouble shoot my handlebars and ember data issues.

Key takeaway: I've learned to build much more simply first and get my crud in order
making things complicated with Ember componenents. Modeling the component relationships
is still difficult for me, but the solution to that is a lot of reading on Ember conventions,
I think a lot of the behind the scenes work was throwing me off, since I couldn't predict how things
were going to work. 
