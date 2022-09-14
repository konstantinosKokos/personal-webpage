---
title: Supertagging Beyond Trees with Heterogeneous Dynamic Convolutions
date: 2022-06-17
type: Presentation
at: The 32nd Meeting of Computational Linguistics in the Netherlands
in: Tilburg
venue_link: https://clin2022.uvt.nl/
slides: https://raw.githubusercontent.com/konstantinosKokos/presentations/master/CLIN2022/main.pdf
---

The parsing pipeline in categorial grammar-based frameworks relies heavily on a supertagging component, a neural model that reads in a sentence and spits out a category assignment for each word; a correct assignment relieves the effort required to assemble constituents into a syntactically coherent unit.

A long-standing issue with supertagging architectures has been the sparsity of their training data– categories with few occurrences are hard to learn, and tend to increase the classifier’s vocabulary.
As a counter-measure, the de facto approach would involve dropping such categories and limiting the scope of the system to categories (and corresponding syntactic phenomena) with a sufficiently high frequency.

More recently, the constructive approach proposes reducing the vocabulary to only the primitive symbols that participate in category formations, in turn representing categories as compositional entities (with their parts made explicit), rather than independent units. We argue that how one chooses to represent categories (and sequences thereof) makes a difference in the kinds of applicable architectures and the performances attainable.

Previously studied sequential models suffer from high memory and time complexity and relatively poor performance, whereas tree-recursive models fail to account for meaningful auto-regressive interactions between trees or otherwise require excessive CPU/GPU alterations. We propose a novel architecture whereby categorial trees are depth-wise decoded in parallel, their state tracked by one vector each. After each decoding step, state vectors receive feedback from their last decoded fringe before exchanging messages with one another, thereby informing the next iteration of both intra- and inter-tree dependencies. To account for the many disparate granularity scales in the graph (i.e. sentential word order, subword contextualized vectors, tree-sequence order and intra-tree edges), we opt for a heterogeneous attention-based formulation.

As a whole, our system boasts the combined merits of previous approaches, namely: high parallelism and fixed decoding time, a wide but memory bound perceptive field and a valid-by-construction output space that requires almost no structure manipulation to produce. We experimentally validate our approach by testing it on the two versions of the English CCGbank, the French TLGbank as well as the Dutch Æthel proofbank.

In every dataset considered, our system significantly outperforms the previous state-of-the-art scores by maintaining performance reaching or surpassing that of classification-based taggers on common categories, and constructive taggers on the tail end of the distribution.

We make our code publicly available at github.com/konstantinosKokos/dynamic-graph-supertagging.
