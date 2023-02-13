---
title: Deductive Parsing with an Unbounded Type Lexicon
date: 2019-08-01
authors: <b>Konstantinos Kogkalidis</b>, Michael Moortgat, Giorgos Tziafas and Richard Moot
link: https://hal-lirmm.ccsd.cnrs.fr/lirmm-02313572
venue: Preprint
type: "workshop"
---

We present a novel deductive parsing framework for categorial type logics, modeled as the composition of two components. The first is an attention-based neural supertagger, which assigns words dependency-decorated, contextually informed linear types. It requires no predefined type lexicon, instead utilizing the type syntax to construct types inductively, enabling the use of a richer and more precise typing environment. The type annotations produced are used by the second component, a computationally efficient hybrid system that emulates the inference process of the type logic, iteratively producing a bottom-up reconstruction of the input's derivation-proof and the associated program for compositional meaning assembly. Initial experiments yield promising results for each of the components.