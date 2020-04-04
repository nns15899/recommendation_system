# Student-Counselling-System

This web portal contains multiple web pages for ease of access. The Home Page contains the links to List of Colleges and Find College pages. The List of Colleges page contains the list of top 100 engineering colleges in India with their JEE Mains and Advanced Marks cutoff. This page is just a directory to check all the colleges. More colleges can be inserted in this database by using the Insert College Data page. Find College contains a form to be filled up by the student which contains his/her name, JEE Mains marks, JEE Advanced Marks, their preferences for various branches in the range of 0-5, 0 meaning not preferred at all and 5 meaning most preferred. After submitting this information, the algorithm calculates and recommends the best possible colleges for them based on other students selections whose preferences are similar to his/her. Apart from the recommended colleges, a list of all colleges that can be applied to based on their marks is also shown. 

After selecting a college to apply, the student submits the application to the particular college and his college selection process is over. The algorithm used that provides the result is <b>Collaborative Filtering Algorithm</b> based on Users.

For creating the website, <b>Django Web Framework</b> is used as it is based on Python.
