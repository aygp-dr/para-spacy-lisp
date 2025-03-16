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
 :text "«Tu sais, avait dit Mme Verdurin à son mari, je crois que nous faisons
fausse route quand par modestie nous déprécions ce que nous offrons au
docteur. C’est un savant qui vit en dehors de l’existence pratique, il
ne connaît pas par lui-même la valeur des choses et il s’en rapporte à
ce que nous lui en disons.»--«Je n’avais pas osé te le dire, mais je
l’avais remarqué», répondit M. Verdurin. Et au jour de l’an suivant,
au lieu d’envoyer au docteur Cottard un rubis de trois mille francs en
lui disant que c’était bien peu de chose, M. Verdurin acheta pour
trois cents francs une pierre reconstituée en laissant entendre qu’on
pouvait difficilement en voir d’aussi belle."
 :tokens 118
 :processed-at "2025-03-16T02:18:14.243387"
 :entities (list
  (entity :text "Verdurin" :label "ORG" :start 24 :end 32) (entity :text "Verdurin." :label "ORG" :start 384 :end 393) (entity :text "Cottard" :label "ORG" :start 451 :end 458) (entity :text "Verdurin" :label "ORG" :start 538 :end 546)
 )
 :sentences (list
  (sentence :text "«Tu sais, avait dit Mme Verdurin à son mari, je crois que nous faisons
fausse route quand par modestie nous déprécions ce que nous offrons au
docteur" :start 0 :end 149) (sentence :text "C’est un savant qui vit en dehors de l’existence pratique, il
ne connaît pas par lui-même la valeur des choses et il s’en rapporte à
ce que nous lui en disons" :start 150 :end 309) (sentence :text "»--«Je n’avais pas osé te le dire, mais je
l’avais remarqué», répondit M" :start 310 :end 382) (sentence :text "Verdurin" :start 23 :end 32) (sentence :text "Et au jour de l’an suivant,
au lieu d’envoyer au docteur Cottard un rubis de trois mille francs en
lui disant que c’était bien peu de chose, M" :start 393 :end 536) (sentence :text "Verdurin acheta pour
trois cents francs une pierre reconstituée en laissant entendre qu’on
pouvait difficilement en voir d’aussi belle" :start 537 :end 672)
 ))