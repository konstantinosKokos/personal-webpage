---
title: Typed Supertags and Semantic Parses for Dutch
date: 2020-01-30
type: Presentation
at: The 30th Meeting of Computational Linguistics in the Netherlands
in: Utrecht
venue_link: https://clin30.sites.uu.nl
slides: https://raw.githubusercontent.com/konstantinosKokos/presentations/master/CLIN2020/pres.pdf
---

AETHEL is a dataset of automated extracted and validated semantic parses for written Dutch, built on the basis of type-logical supertags. The dataset consists of two parts. First, it contains a lexicon of typed supertags for about 900,000 words in context. We use a modal-enhanced version of the simply typed linear lambda calculus, so as to capture dependency relations in addition to the function-argument structure. In addition to the type lexicon, AETHEL provides about 73,000 type-checked derivations, presented in four equivalent formats: natural-deduction and sequent-style proofs, linear logic proofnets, and the associated programs (lambda terms) for semantic composition.

AETHEL's type lexicon is obtained by an extraction algorithm applied to LASSY-Small, a gold standard corpus of syntactically annotated written Dutch. We discuss the extraction algorithm, and show how 'virtual elements' in the original LASSY annotation of unbounded dependencies and coordination phenomena give rise to higher-order types. We present some example usecases of the dataset, highlighting the benefits of a type-driven approach for NLP applications at the syntax-semantics interface.

The following resources are open-sourced with AETHEL: the lexical mappings between words and types, a subset of the dataset comprised of about 8,000 semantic parses based on Wikipedia content, and the Python code that implements the extraction algorithm.
