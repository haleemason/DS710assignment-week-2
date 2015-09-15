# DS 710 - R Programming Assignment
# Homework 2:  Control Flow 

# Download the data set airport.csv.  
# Read it into R, attach the data, and 
 
myairport = read.csv(file="C:/Users/halee.mason/Documents/GitHub/ds710assignment2/airport.csv", header=TRUE)
scheduled <- myairport$Scheduled.Departures # After attaching the variables to each colunm header,
performed <- myairport$Performed.Departures # Save all numbers to a variable
passengers <- myairport$Passengers
airport <- myairport$Airport

#head(myairport) # look at the first few lines of data to  see the format of the data. 
#attach(myairport) # Attach data

# Print a list of airports at which the number of scheduled departures 
# was less than the number of departures performed.

# List of airports with fewer scheduled departures
total_late_passengers = 0

for(row in 1:125){ #iterate over Scheduled.Departures aka length(Scheduled.Departures), but in this case I know there are 125 rows
  air <- airport[row]
  perf <- performed[row]
  sched <- scheduled[row] #renamed some variables
  
  if(sched > perf){ # check if Scheduled.Departures is less than Performed.Departures 
    print(air)
    total_late_passengers = total_late_passengers + passengers[row]

  } # end if Scheduled.Departures is less than Performed.Departures 
} # end iteration over departing planes

print(total_late_passengers)
