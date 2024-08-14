---
title: Fighting the COVID-19 Infodemic with a Holistic BERT Ensemble
date: 2021-06-01
authors: Giorgos Tziafas, <u>Konstantinos Kogkalidis</u> and Tommaso Caselli
code: https://github.com/gtziafas/nlp4ifchallenge
link: https://www.aclweb.org/anthology/2021.nlp4if-1.18
venue: "Proceedings of the Fourth Workshop on NLP for Internet Freedom: Censorship, Disinformation, and Propaganda"
type: "workshop"
---

This paper describes the TOKOFOU system, an ensemble model for misinformation detection tasks based on six different transformer-based pre-trained encoders, implemented in the context of the COVID-19 Infodemic Shared Task for English. We fine tune each model on each of the task's questions and aggregate their prediction scores using a majority voting approach. TOKOFOU obtains an overall F1 score of 89.7%, ranking first.