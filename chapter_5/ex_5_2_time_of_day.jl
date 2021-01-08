"""
The function time returns the current Greenwich Mean Time in seconds since “the epoch”, 
which is an arbitrary time used as a reference point. On UNIX systems, the epoch is 1 January 1970.

Write a script that reads the current time and converts it to a time of day in hours, minutes, and seconds, 
plus the number of days since the epoch.
"""

function timeOfDay()
    epoch = time()
    seconds_in_day = 24 * 60 * 60
    seconds_in_hour = 60 * 60
    seconds_in_minute = 60
    
    days = epoch ÷ seconds_in_day # number of whole days passed since epoch start
    hours = (epoch % seconds_in_day) ÷ seconds_in_hour  # find remainding seconds after all whole days accounted, then floor divide to find hours
    minutes = (epoch % seconds_in_day) % seconds_in_hour ÷ seconds_in_minute # " " find minutes
    seconds = ((epoch % seconds_in_day) % seconds_in_hour) ÷ seconds_in_minute # " " find seconds


    println("Days since beginning of epoch: ", days)
    println("Time of day: ", Int(hours), ":", Int(minutes), ":", seconds)
end

timeOfDay()
