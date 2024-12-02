---
title: "Deductive Parsing with an Unbounded Type Lexicon"
date: 2019-08-09
type: Contributed
at: "SemSpace 2019: Workshop on Semantic Spaces at the Intersection of NLP, Physics, and Cognitive Science (ESSLLI 2019)"
in: Riga
venue_link: https://sites.google.com/view/semspace2019
slides: https://raw.githubusercontent.com/konstantinosKokos/presentations/master/SemSpace2019/pres.pdf
---

We present a novel deductive parsing framework for categorial type logics, modeled as the composition of two components.
The first is an attention-based neural supertagger, which assigns words dependency-decorated, contextually informed linear types.
It requires no predefined type lexicon, instead utilizing the type syntax to construct types inductively, enabling the use of a richer and more precise typing environment.
The type annotations produced are used by the second component, a computationally efficient hybrid system that emulates the inference process of the type logic, iteratively producing a bottom-up reconstruction of the input’s derivation-proof and the associated program for compositional meaning assembly.
Initial experiments yield promising results for each of the components.
