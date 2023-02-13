---
title: "Æthel: Automatically Extracted Typeogical Derivations for Dutch"
date: 2020-05-01
authors: <b>Konstantinos Kogkalidis</b>, Michael Moortgat and Richard Moot
code: https://github.com/konstantinosKokos/aethel
link: https://www.aclweb.org/anthology/2020.lrec-1.647
venue: Proceedings of the 12th Language Resources and Evaluation Conference
type: "conference"
---

We present ÆTHEL, a semantic compositionality dataset for written Dutch. ÆTHEL consists of two parts. First, it contains a lexicon of supertags for about 900 000 words in context. The supertags correspond to types of the simply typed linear lambda-calculus, enhanced with dependency decorations that capture grammatical roles supplementary to function-argument structures. On the basis of these types, ÆTHEL further provides 72192 validated derivations, presented in four formats: natural-deduction and sequent-style proofs, linear logic proofnets and the associated programs (lambda terms) for meaning composition. ÆTHEL's types and derivations are obtained by means of an extraction algorithm applied to the syntactic analyses of LASSY Small, the gold standard corpus of written Dutch. We discuss the extraction algorithm and show how `virtual elements' in the original LASSY annotation of unbounded dependencies and coordination phenomena give rise to higher-order types. We suggest some example usecases highlighting the benefits of a type-driven approach at the syntax semantics interface. The following resources are open-sourced with {ÆTHEL: the lexical mappings between words and types, a subset of the dataset consisting of 7924 semantic parses, and the Python code that implements the extraction algorithm.