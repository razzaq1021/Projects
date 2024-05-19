use cars ; 

-- Read Data --
select * from car_dekho;

-- Toal cars: To geta count of total records --
select count(*) from car_dekho;

-- The manager asked the employee how many cars will be available in 2023 --
select count(*) from car_dekho 
where year=2023;

-- The manager  asked the employee how many cars will be available in 2020,2021,2022 --
select count(*) from car_dekho 
where year in(2020,2021,2022) 
group by year;

-- Client asked me to print the total cars by year. I don't want to see all the details --
select year, count(*) from car_dekho 
group by year;

-- Client asked to car dealer agent how many diesel cars will be there in 2020 --
select count(*) from car_dekho 
where year=2020
and fuel = 'Diesel';

-- Client requested a car dealer agent how many petrol cars will be there in 2020 --
select count(*) from car_dekho
where year = 2020
and fuel = 'Petrol';

-- The manager told the employee to give a print all the fuel cars come by all year --
select year, count(*) from car_dekho
where fuel = 'Petrol'
group by year;
select year, count(*) from car_dekho
where fuel = 'Diesel'
group by year;
select year, count(*) from car_dekho
where fuel = 'CNG'
group by year;

-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars --
select year, count(*) from car_dekho
group by year having count(*)>100;

-- Manager said to all emplyoee that all cars count details between 2015 and 2023 --
select count(*) from car_dekho
where year between 2015 and 2023 ;

-- The manager said to the employee that all cars details between 2015 and 2023 --
select * from car_dekho
where year between 2015 and 2023 ;

-- END --










