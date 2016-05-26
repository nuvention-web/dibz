### Jordan's List
- In item.tag, check out the function called "imgAppear". It is supposed to change the src attribute of the img tag such that the stored image will appear, but it is not even being entered.
- listings.tag (?) or some related file is causing items to appear multiple times after being added. This goes away upon hard-refreshing the page, but it shouldn't happen in the first place.
- listings.tag (?) or some related file is showing a blank template for an item even when no items are present in the database.
- EVERY SINGLE PAGE needs a hard refresh in order to work. I assume the DOM and Firebase/Riot scripts are loading out of order, but I don't know how to fix this.
- The only login type that works is email (see index.html)... Google & Facebook lead to blank pages, and I don't know why.

### Things Alaina hasn't done yet
- User authentication
