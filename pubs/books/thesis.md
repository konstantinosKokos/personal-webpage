---
title: "Dependency as Modality, Parsing as Permutation: A Neurosymbolic Perspective on Categorial Grammars"
date: 2023-06-01
authors: <u>Konstantinos Kogkalidis</u>
link: https://www.lotpublications.nl/dependency-as-modality-parsing-as-permutation
venue: "LOT Dissertation Series"
type: thesis
---

Since their inception, categorial grammars have been front runners in the quest for a formally elegant, computationally attractive and adequately flexible theory of linguistic form and meaning.
As a result of developments in theoretical computer science, Lambek-style categorial grammars have gradually been recognized for what they truly are: type-systems proper.
Words enact typed constants, and interact with one another via means of grammatical rules enacted by type inferences, composing larger phrases in the process.
The end result is at the same time a parse, a proof and a program, bridging the seemingly disparate fields of linguistics, formal logics and computer science; a testament to the holy triptych of language, logic and computation.
The transition from form to meaning is traditionally handled in a Montague-style fashion via a series of homomorphic translations that gradually remove or simplify nuances of the syntactic type calculus to move towards a uniform and expressive semantic calculus.
Alluring as this might be, it poses pragmatic problems for the whole programme to come to fruition.
For the setup to work on the semantic level, one has no choice but to start from the hardest part, namely the type-theoretic treatment of natural language syntax.
Phenomena like movement, word-order variation, discontinuities and the like require careful treatment that needs to be both general enough to encompass the full range of grammatical utterances, yet strict enough to ward off ungrammatical derivations.

Breaking away from tradition, this thesis takes an operational shortcut in targeting a ``deeper'' calculus of grammatical composition, engaging only minimally with surface syntax.
Where previously functional functional syntactic types would be position-conscious, requiring their arguments in predetermined positions upon a binary tree, they are now agnostic to both tree structure and sequential order, alleviating the need for fine-grained syntactic refinements.
This simplification comes at the cost of a misalignment between provability and grammaticality: the laxer semantic calculus permits more proofs than linguistically allowed.
To partially circumvent this underspecification, the thesis takes an additional step away from the established norm, proposing the incorporation of unary type operators extending the analytical axis from plain function-argument structures to function-argument structures with fixed grammatical roles.
The new type calculus produces mixed unary/n-ary trees, each unary tree denoting a dependency domain, and each n-ary tree underneath it denoting the phrases which together form that domain.
Although still underspecified, these peculiar structures directly subsume non-projective labeled dependency trees.
More than that, they have their roots set firmly in type theory, paving the way to their meaningful semantic interpretation.

On more practical grounds and in order to investigate the formalism's expressive adequacy, an extraction algorithm is designed and employed to convert syntactic analyses of Dutch sentences represented as dependency graphs (stemming from the Lassy small corpus) into proofs of the target logic.
The vast majority of input analyses is successfully handled, giving rise to a large and versatile proofbank, a collection of sentences paired with tectogrammatic theorems and their corresponding programs, and an elaborate type lexicon, providing type assignments to almost one million lexical tokens within a given linguistic context.

The proofbank and the underlying lexicon both find use as training data in the design and implementation of a neurosymbolic proof search system able to efficiently navigate the logic's expansive theorem space.
The system consists of three major components that alternate role within the processing pipeline.
Component number one is a supertagger responsible for assigning a type to each input word — the tagger is formulated on the basis of a hyper-efficient heterogeneous graph convolution kernel that boasts state-of-the-art accuracy among categorial grammar datasets.
Rather than produce type asignments in the form of conditional probabilities over a predefined type vocabulary, the supertagger instead constructs types dynamicaly, following their algebraic decomposition.
As such, it is unconstrained by sparsity and data under-representation, generalizing well to rare assignments and even producing correct assignments for types never seen during the course of training.
Component number two is a neural permutation module that exploits the linearity constraint of the target logic in order to simplify proof search as optimal transport learning, associating resources (conditional validities) to the processes that require them (conditions).
This reformulation allows for a massively parallel and easily optimizable implementation, unobstructed by the structure manipulation breaks common in conventional parsers.
Component number three is the type system itself, responsible for navigating the produced structures and thus asserting their well-formedness.
Results suggest efficiency superior to, and performance on par with, established baselines across categorial formalisms, despite the ambiguity inherent to the logic.
