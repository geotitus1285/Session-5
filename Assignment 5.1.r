library(stringr)
# vector of vowels
vowels = c("a", "e", "i", "o", "u")
# vector for storing results
num_vowels = vector(mode = "integer", length = 5)
# calculate number of vowels in each name
for (j in seq_along(vowels)) {
num_aux = str_count(tolower(states), vowels[j])
num_vowels[j] = sum(num_aux)
# add vowel names
names(num_vowels) = vowels
# total number of vowels
num_vowels
barplot(num_vowels, main = "Number of vowels in USA States names", border = NA, ylim = c(0, 80))