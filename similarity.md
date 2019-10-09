# Similarity

Similarity can be used to do many things - finding similar items, detecting plagiarism, making recommendations, clustering items etc.

## Distance similarity

https://towardsdatascience.com/3-basic-distance-measurement-in-text-mining-5852becff1d7
https://medium.com/@adriensieg/text-similarities-da019229c894
http://aircconline.com/mlaij/V3N1/3116mlaij03.pdf

## String similarity
- edit distance based. Computes the number of operations needed to transform one string to another. More operations means less similarity. 
- Token based. Instead of string, the expected input is a set of takens. The more the number of tokens, the more similar the sets are. 
- Sequence based. Finding the common substrings between two strings. The longer the longest sequence, the higher the similarity score. 

1. edit distance based
hamming distance
levenshtein distance
damerau-levenshtein distance
jaro winkler distance

2. Token based
jaccard index
jaro-winkler distance
sorensen dice

3. Sequence based 
ratcliff-obershelp similarity (gestalt pattern matching)


https://asecuritysite.com/forensics/simstring

 
string search (boyer moore grep algorithm)
