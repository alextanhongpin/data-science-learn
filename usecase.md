

## Machine learning usecases

- google search makes use of ML and query understanding, answer models
- photo tagging for people and objects - google search, facebook, pinterest
- content recommendations = amazon, netflix, facebook, youtube
- video tagging, caption - youtube, facebook
- spelling, grammar checking, translating
- games 
- ads targeting
- recipe cooking recommendation based on the ingredients you have


## Neural network

Write your own neural network and look into the basic applications. Implement in different languages (go, node, python, rust, haskell).


## LambdaMART

Part of learning to rank

Understand the LambdaMART algorithm and use it to create ranking system.


## Machine Learning Softwares

Check out the PredictionIO, Apache Mahout and Elastic Search More Like This performance.

## Keras Text Processing

Look into the different areas of text processing and understand how to apply keras to it. Also look into Spacy for chatbots and learn how to dockerize them.


## Ideas

some ideas - combine expert system (rule based and machine learning)
- create funnels that filters responses
- use message queue/redis streams to perform transformation etc and filter when the events pass through
- design alerting/response mechanism
- check AppSensor application


## Thoughts

- can expert system or rule based be used alongside machine learning
- expert system vs machine learning performance



## Deep learning use case

What are the use cases of AI, and what can be applied? 
https://skymind.ai/wiki/use-cases


## Data Science NLTK

TODO: Place this in a separate repository.


- https://www.textkernel.com/challenges-behind-parsing-matching-cvs-jobs/
- https://www.freelancer.com/projects/data-mining-matlab-mathematica/nlp-resume-parser-write-nlp/
- https://datascience.stackexchange.com/questions/36447/resume-parsing-extracting-skills-from-resume-using-machine-learning
- https://medium.com/@divalicious.priya/information-extraction-from-cv-acec216c3f48
- https://dataturks.com/blog/named-entity-recognition-in-resumes.php
- https://medium.com/activewizards-machine-learning-company/top-9-data-science-use-cases-in-media-and-entertainment-a5705231e228
- https://bigdata-madesimple.com/6-of-my-favorite-case-studies-in-data-science/
- https://medium.com/coriers/7-use-cases-for-data-science-and-predictive-analytics-e3616e9331f9
- https://blogs.sas.com/content/hiddeninsights/2015/05/28/building-customer-profiles-in-the-era-of-big-data/
- https://arxiv.org/pdf/1503.07474.pdf
- https://medium.com/datadriveninvestor/represent-users-and-products-in-a-data-science-way-for-e-commerce-website-22d7dbc24c33



## Document Classifier

- An API to read the input file
- How to parse PDF? extract the text from pdf, and go through the pipeline.  (note, pdf is only a source, we should create an interface that accepts a string, since the source can be from anywhere, input string, word text, pdf, excel, scraped website)
- lowercase text, tokenize text, remove stopwords, stemming, lemmatization
- NER analysis
- parse the section
- how to find the skills and section
- how to parse different type of documents (word, docs, pages)

- with this, we can first perform tagging on the documentation and tfidf. we can allow search to be done, 
- e.g. show me the resumes with the skills javascript
- show me the users with 10 years experience
- this requires knowledge on NLU natural language understanding (take a look at SpaCy)

https://www.analyticsvidhya.com/blog/2017/01/ultimate-guide-to-understand-implement-natural-language-processing-codes-in-python/

come up with a simple POC first, use jupyter notebook to execute the independent pipeline, then only look into optimization for each steps
at the end release a simple api or grpc that allows the code to be streamed (redis stream?) to be analyzed real-time.
- this can be a worker process and we want to do it once only/can also run as a cron daily, but best to process it real time)
- we can create a basic search engine with the text that is scraped
- create a simple visualization/website to display each pipeline steps

## POS Tagger 
What can we do with tagger?

What types of tagger are available?
- rule-based pos taggers (brill tagger)
- stochastic pos taggers (using hidden markov model)
- brill tagger. An “error-driven transformation-based tagger”. A form of supervised learning.
- Standford log-linear part of speech tagger: http://www.nltk.org/api/nltk.tag.html#module-nltk.tag.stanford


## Setting up the data science stack
- before starting with machine learning, we need to setup the infrastructure for data gathering first, aka enablers. 
- We also need to find out what data can be captured, aka active data collection. The passive data collection strategy is to collect all and making sense of them later. 
- It’s better to set a target result, what kind of data is required to produce the desired output. 
- create a playbook for metrics and experiments, such as
Experiment
- valid_from
- valid_till
- results
- description
- target_achieved
- comparison
- conclusion


## NLTK 

https://www.nltk.org/book/ch01.html#sec-automatic-natural-language-understanding

https://stackabuse.com/text-summarization-with-nltk-in-python/

## Building neural network from scratch

https://towardsdatascience.com/how-to-build-your-own-neural-network-from-scratch-in-python-68998a08e4f6



## Interesting data blog

http://datagenetics.com/blog.html
http://datagenetics.com/blog/october32018/index.html

