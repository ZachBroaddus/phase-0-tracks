Release 0:
2. What are some common HTTP status codes?

404: Not Found. The requested source is no longer available.
403: Forbidden. The machine you are requesting from does not have access to the resource.
500: Internal Server Error. Catch-all error code for instances in which other error codes do not make sense.
503: Service Unavailable. The web server is not available.
504: Gateway Timeout. The request timed out for one of a number of reasons.

3. What is the difference between a GET request and a POST request? When might each be used?

GET-Requests data from a specified resource. Could be used to view a page located on a remote server.
POST-Submits data to be processed to a specified resource. Could be used to submit info using an HTML form such as creating a 
user account.

4. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

A cookie is a small file that is essentially a lookup table with key/value pairs, stored on a users computer. The file stores data specific to a particular client and website that allows the server to deliver content that can be tailored to a particular user and/or save data between visits to a site. Writing data to a cookie is usually done when a new web page is loaded.