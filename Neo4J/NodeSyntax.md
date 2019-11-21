Node Syntax
=================

Cypher uses a pair of parentheses (usually containing a text string) to represent a node, eg: ``()``, ``(foo)``. This is reminiscent of a circle or a rectangle with rounded end caps. Here are some ASCII-art encodings for example Neo4j nodes, providing varying types and amounts of detail:
<pre><code>
()
(matrix)
(:Movie)
(matrix:Movie)
(matrix:Movie {title: "The Matrix"})
(matrix:Movie {title: "The Matrix", released: 1997})
</code></pre>
The simplest form, ``()``, represents an anonymous, uncharacterized node. If we want to refer to the node elsewhere, we can add a variable, for example: (matrix). A variable is restricted to a single statement. It may have different (or no) meaning in another statement.

The Movie label (prefixed in use with a colon) declares the node’s type. This restricts the pattern, keeping it from matching (say) a structure with an Actor node in this position. Neo4j’s node indexes also use labels: each index is specific to the combination of a label and a property.

The node’s properties, for example title, are represented as a list of key/value pairs, enclosed within a pair of braces, for example: ``{name: "Keanu Reeves"}``. Properties can be used to store information and/or restrict patterns.
