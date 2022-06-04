# Pewlett-Hackard-Analysis

## Project Overview
Pewlett-Hackard have many employees approaching the retirement age for their career and will cause a high amount of job openings within the company. This can cause Pewlett-Hackard to have an employee shortage within different departments. Bobby’s manager wanted us to determine the number of retiring employees per title and identify employees who are eligible to participate in a mentorship program. The mentorship program would allow Pewlett-Hackard to train in house employees with the retiring employees. 
## Resources
- Data Source: mentorship_eligibilty.csv, retirement_titles.csv, retiring_titles.csv, unique_titles.csv

- Software: PostgreSQL 12.11.1, pgAdmin 4
	
## Results:

- We first determined who was eligible for retirement and what job they were working. As you can determine by our table, some employees have changed positions throughout the years. This gives us repeats of the same employee as they transition to different titles throughout their career at Pewlett-Hackard.

Employees eligible for retirement: 

![Retirement-Titles]( https://github.com/NickFoley47/Pewlett-Hackard-Analysis/blob/main/Pics%20of%20Data/Retirement-Titles.PNG)


- Next, we applied a SELECT DISTINCT ON to remove repeating data and allow us to show the most current title for each employee.

Unique titles (removing repeats and only having most current job):

![Uni-titles]( https://github.com/NickFoley47/Pewlett-Hackard-Analysis/blob/main/Pics%20of%20Data/Uni-titles.PNG)

- We wanted to see which title’s we going to have the most eligible employees for retirement. This will allow us to focus on those titles and making sure we have the next generation trained.

Title table: 

![Title-ret](https://github.com/NickFoley47/Pewlett-Hackard-Analysis/blob/main/Pics%20of%20Data/Title-ret.PNG)

- To ensure the future of Pewlett-Hackard we wanted to make sure we have the on track for retirement employees’ mentor the new generation of employees. This will allow us to feel more comfortable with  our transition of new employees.

Mentorship program: 

![Employees-mentor]( https://github.com/NickFoley47/Pewlett-Hackard-Analysis/blob/main/Pics%20of%20Data/Employees-mentor.PNG)

## Summary
According to our retiring titles we will have 72,458 employees eligible for retirement. The titles that will need to be filled the most are Senior Engineer and Senior Staff. 72,458 employees can retire, but not everyone will retire at the same time. Some employees may want to work longer if they love their job. 

To handle these waves of retirements we will start the mentorship program. This will allow us to provide adequate training to promote employees to a higher position. We have 1539 Senior Engineers and 1545 Senior Staff who are available for the mentorship program, these numbers are not as high. But once again, not everyone will retire at the same time. Pewlett-Hackard will be in a good place using their mentorship program. 

We wanted to see how many of our employees in the sales department are going to be eligible for retirement. Sales is an important position for Pewlett-Hackard. The sales manager will be able to plan out his mentorship program and be able to handle employees retiring. 

Sales team:

![Sales-ret]( https://github.com/NickFoley47/Pewlett-Hackard-Analysis/blob/main/Pics%20of%20Data/Sales-ret.PNG)
