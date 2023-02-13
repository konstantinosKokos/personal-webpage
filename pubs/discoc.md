---
title: "Discontinuous Constituency and BERT: A Case Study of Dutch"
date: 2022-05-01
authors: <b>Konstantinos Kogkalidis</b> and Gijs Wijnholds
code: https://github.com/gijswijnholds/discontinuous-probing
link: https://aclanthology.org/2022.findings-acl.298
venue: "Findings of the Association for Computational Linguistics: ACL 2022"
type: "conference"
---

In this paper, we set out to quantify the syntactic capacity of BERT in the evaluation regime of non-context free patterns, as occurring in Dutch. We devise a test suite based on a mildly context-sensitive formalism, from which we derive grammars that capture the linguistic phenomena of control verb nesting and verb raising. The grammars, paired with a small lexicon, provide us with a large collection of naturalistic utterances, annotated with verb-subject pairings, that serve as the evaluation test bed for an attention-based span selection probe. Our results, backed by extensive analysis, suggest that the models investigated fail in the implicit acquisition of the dependencies examined.