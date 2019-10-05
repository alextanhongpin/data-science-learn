## How to create an algorithm for a decaying time?

Simple. We can use exponent for that.
We know exp(0) = 1, exp(-0.5) = 0.6, exp(-1) = 0.3. With this we can just create a score of 0 to 1, with 1 being the normalised score from the current date, and 0 being the minimum date. We then deduct this value by 1 to get a score between 0 and -1.

How can this be useful? Think of something that has a date to it, in order for us to apply recency. So the earlier items will have higher score, and the later ones will have less score.
Say, we have a list of reviews and we want to create a filter by tags. This is how we can approach it:

- lowercase the sentence
- Tokenise the tags
- Remove the stop words
- grab the unique words (we don’t want repeating terms from a word, which will bias the whole score towards a single review)
- Based on the created date, apply the weight. So instead of 1 occurrences, if it happens say 30 days ago, the score might be 0.3. If it happens today, the score will be one.
- For all the tags we have from all the reviews, we sum them up.
- Take the top n tags, and we have a trending keywords tag.
