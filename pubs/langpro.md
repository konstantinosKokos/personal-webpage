---
title: A Logic-Based Framework for Natural Language Inference in Dutch
date: 2022-02-01
authors: Lasha Abzianidze and <u>Konstantinos Kogkalidis</u>
code: https://github.com/kovvalsky/prove_SICK_NL
link: https://www.clinjournal.org/index.php/clinj/article/view/120
venue: Computational Linguistics in the Netherlands
type: journal
---

We present a framework for deriving inference relations between Dutch sentence pairs. The proposed framework relies on logic-based reasoning to produce inspectable proofs leading up to inference labels; its judgements are therefore transparent and formally verifiable. At its core, the system is powered by two λ-calculi, used as syntactic and semantic theories, respectively. Sentences are first converted to syntactic proofs and terms of the linear λ-calculus using a choice of two parsers: an Alpino-based pipeline, or Neural Proof Nets. The syntactic terms are then converted to semantic terms of the simply typed λ-calculus, via a set of hand designed type- and term-level transformations. Pairs of semantic terms are then fed to an automated theorem prover for natural logic which reasons with them while using the lexical relations found in the Open Dutch WordNet. We evaluate the reasoning pipeline on the recently created Dutch natural language inference dataset, and achieve promising results, remaining only within a 1.1–3.2\% performance margin to strong neural baselines. To the best of our knowledge, the reasoning pipeline is the first logic-based system for Dutch.