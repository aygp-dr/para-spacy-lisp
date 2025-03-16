;; spaCy-lisp: 1.0.0
;; info:
;;   title: Text Analysis Schema
;;   description: Schema for NLP analysis of paragraphs using spaCy
;;   version: 1.0.0
;; components:
;;   schemas:
;;     TextAnalysis:
;;       type: object
;;       properties:
;;         text:
;;           type: string
;;           description: Original text content
;;         tokens:
;;           type: integer
;;           description: Number of tokens in the text
;;         processed-at:
;;           type: string
;;           format: date-time
;;           description: Timestamp of processing
;;         entities:
;;           type: array
;;           items:
;;             $ref: '#/components/schemas/Entity'
;;           description: Named entities found in text
;;         sentences:
;;           type: array
;;           items:
;;             $ref: '#/components/schemas/Sentence'
;;           description: Sentences in the text
;;     Entity:
;;       type: object
;;       properties:
;;         text:
;;           type: string
;;           description: Text of the entity
;;         label:
;;           type: string
;;           description: Entity type label
;;         start:
;;           type: integer
;;           description: Start character position
;;         end:
;;           type: integer
;;           description: End character position
;;     Sentence:
;;       type: object
;;       properties:
;;         text:
;;           type: string
;;           description: Text of the sentence
;;         start:
;;           type: integer
;;           description: Start character position
;;         end:
;;           type: integer
;;           description: End character position

(text-analysis
 :text "--Mais je ne sais pas, moi, je crois que c’était au Bois un soir où tu
es venu nous retrouver dans l’île. Tu avais dîné chez la princesse des
Laumes, dit-elle, heureuse de fournir un détail précis qui attestait
sa véracité. A une table voisine il y avait une femme que je n’avais
pas vue depuis très longtemps. Elle m’a dit: «Venez donc derrière le
petit rocher voir l’effet du clair de lune sur l’eau.» D’abord j’ai
bâillé et j’ai répondu: «Non, je suis fatiguée et je suis bien ici.»
Elle a assuré qu’il n’y avait jamais eu un clair de lune pareil. Je
lui ai dit «cette blague!» je savais bien où elle voulait en venir."
 :tokens 117
 :processed-at "2025-03-16T02:18:14.785525"
 :entities (list
  (entity :text "--Mais" :label "ORG" :start 0 :end 6) (entity :text "Bois" :label "ORG" :start 52 :end 56) (entity :text "Laumes," :label "ORG" :start 142 :end 149) (entity :text "Elle" :label "ORG" :start 311 :end 315) (entity :text "«Venez" :label "ORG" :start 325 :end 331) (entity :text "«Non," :label "ORG" :start 441 :end 446) (entity :text "Elle" :label "ORG" :start 486 :end 490)
 )
 :sentences (list
  (sentence :text "--Mais je ne sais pas, moi, je crois que c’était au Bois un soir où tu
es venu nous retrouver dans l’île" :start 0 :end 104) (sentence :text "Tu avais dîné chez la princesse des
Laumes, dit-elle, heureuse de fournir un détail précis qui attestait
sa véracité" :start 105 :end 222) (sentence :text "A une table voisine il y avait une femme que je n’avais
pas vue depuis très longtemps" :start 223 :end 309) (sentence :text "Elle m’a dit: «Venez donc derrière le
petit rocher voir l’effet du clair de lune sur l’eau" :start 310 :end 401) (sentence :text "» D’abord j’ai
bâillé et j’ai répondu: «Non, je suis fatiguée et je suis bien ici" :start 402 :end 483) (sentence :text "»
Elle a assuré qu’il n’y avait jamais eu un clair de lune pareil" :start 484 :end 549) (sentence :text "Je
lui ai dit «cette blague!» je savais bien où elle voulait en venir" :start 550 :end 620)
 ))