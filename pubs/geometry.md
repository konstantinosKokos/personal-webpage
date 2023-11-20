---
title: Geometry-Aware Supertagging with Heterogeneous Dynamic Convolutions
date: 2022-05-01
authors: <b>Konstantinos Kogkalidis</b> and Michael Moortgat
code: https://github.com/konstantinosKokos/dynamic-graph-supertagging
link: https://aclanthology.org/2023.clasp-1.13/
venue: Proceedings of the 2023 CLASP Conference on Learning with Small Data (LSD)
---

The syntactic categories of categorial grammar formalisms are structured units made of smaller, indivisible primitives, bound together by the underlying grammar's category formation rules. In the trending approach of constructive supertagging, neural models are increasingly made aware of the internal category structure, which in turn enables them to more reliably predict rare and out-of-vocabulary categories, with significant implications for grammars previously deemed too complex to find practical use. In this work, we revisit constructive supertagging from a graph-theoretic perspective, and propose a framework based on heterogeneous dynamic graph convolutions aimed at exploiting the distinctive structure of a supertagger's output space. We test our approach on a number of categorial grammar datasets spanning different languages and grammar formalisms, achieving substantial improvements over previous state of the art scores.