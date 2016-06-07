### Jordan's List
- In item.tag, check out the function called "imgAppear". It is supposed to change the src attribute of the img tag such that the stored image will appear, but it is not even being entered.
- listings.tag (?) or some related file is causing items to appear multiple times after being added. This goes away upon hard-refreshing the page, but it shouldn't happen in the first place.
- listings.tag (?) or some related file is showing a blank template for an item even when no items are present in the database. Now that I think about it, maybe this is due to "numitems" being nested at the same level as each item.
- EVERY SINGLE PAGE needs a hard refresh in order to work. I assume the DOM and Firebase/Riot scripts are loading out of order, but I don't know how to fix this.
- The only login type that works is email (see index.html)... Google & Facebook lead to blank pages, and I don't know why. However, when I check "firebase.auth().currentUser" is NOT NULL, even though the database storage and redirect to '/#/manage' don't work.
- Now check out listings.tag. The JavaScript here that should be updating the items.tag file is not working... Sometimes I get this error "Synchronous XMLHttpRequest on the main thread is deprecated because of its detrimental effects to the end user's experience. For more help http://xhr.spec.whatwg.org/"

### Things Alaina hasn't done yet
- Check dibz needs to pull correct item information from Firebase xx
- Accept dib needs to open email xx
- Look at get buyer link soon!
- Call dibz button needs to work (fix that horrid modal)
