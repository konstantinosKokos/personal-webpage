---
title: "OYXOY: A Modern NLP Test Suite for Modern Greek"
date: 2023-09-14
authors: <b>Konstantinos Kogkalidis</b>, Stergios Chatzikyriakidis, Eirini Chrysovalantou Giannikouri, Vassiliki Katsouli, Christina Klironomou, Christina Koula, Dimitris Papadakis, Thelka Pasparaki, Erofili Psaltaki, Efthymia Sakellariou and Hara Soupiona
code: https://github.com/StergiosCha/OYXOY
link: https://aclanthology.org/2024.findings-eacl.21/
venue: "Findings of the Association for Computational Linguistics: EACL 2023"
type: "conference"
---

This paper serves as a foundational step towards the development of a linguistically motivated and technically relevant evaluation suite for Greek NLP. We initiate this endeavor by introducing four expert-verified evaluation tasks, specifically targeted at natural language inference, word sense disambiguation (through example comparison or sense selection) and metaphor detection. More than language-adapted replicas of existing tasks, we contribute two innovations which will resonate with the broader resource and evaluation community. Firstly, our inference dataset is the first of its kind, marking not just one, but rather all possible inference labels, accounting for possible shifts due to e.g. ambiguity or polysemy. Secondly, we demonstrate a cost-efficient method to obtain datasets for under-resourced languages. Using ChatGPT as a language-neutral parser, we transform the Dictionary of Standard Modern Greek into a structured format, from which we derive the other three tasks through simple projections. Alongside each task, we conduct experiments using currently available state of the art machinery. Our experimental baselines affirm the challenging nature of our tasks and highlight the need for expedited progress in order for the Greek NLP ecosystem to keep pace with contemporary mainstream research. 