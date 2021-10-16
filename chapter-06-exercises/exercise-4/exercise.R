# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(string1, string2) {
    return(nchar(string1) >= 2 * nchar(string2))
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
print(is_twice_as_long("dolce&gabbana", "fendi"))
print(is_twice_as_long("versace", "fendi"))
print(is_twice_as_long("gucciprada", "fendi"))


# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(string1, string2) {
    if (nchar(string1) > nchar(string2)) {
        N <- nchar(string1) - nchar(string2)
        print(paste("your first string is longer by", N, "characters"))
    } else if (nchar(string1) < nchar(string2)) {
        N <- nchar(string2) - nchar(string1)
        print(paste("your second string is longer by", N, "characters"))
    } else
    print("Your strings are the same length!")

}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1

describe_difference("fendi", "gucci")
describe_difference("versace", "fendi")
describe_difference("ysl", "dolce&gabbana")
