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
 :text "--«Ah! oui, ce garçon que j’ai vu une fois ici, qui ressemble tellement
au portrait de Mahomet II par Bellini. Oh! c’est frappant, il a les
mêmes sourcils circonflexes, le même nez recourbé, les mêmes pommettes
saillantes. Quand il aura une barbiche ce sera la même personne. En
tout cas il a du goût, car Bergotte est un charmant esprit.» Et voyant
combien j’avais l’air d’admirer Bergotte, Swann qui ne parlait jamais
des gens qu’il connaissait fit, par bonté, une exception et me dit:"
 :tokens 84
 :processed-at "2025-03-16T02:18:13.993180"
 :entities (list
  (entity :text "--«Ah!" :label "ORG" :start 0 :end 6) (entity :text "Mahomet" :label "ORG" :start 87 :end 94) (entity :text "Bellini." :label "ORG" :start 102 :end 110) (entity :text "Quand" :label "ORG" :start 223 :end 228) (entity :text "Bergotte" :label "ORG" :start 306 :end 314) (entity :text "Bergotte," :label "ORG" :start 382 :end 391) (entity :text "Swann" :label "ORG" :start 392 :end 397)
 )
 :sentences (list
  (sentence :text "--«Ah! oui, ce garçon que j’ai vu une fois ici, qui ressemble tellement
au portrait de Mahomet II par Bellini" :start 0 :end 109) (sentence :text "Oh! c’est frappant, il a les
mêmes sourcils circonflexes, le même nez recourbé, les mêmes pommettes
saillantes" :start 110 :end 221) (sentence :text "Quand il aura une barbiche ce sera la même personne" :start 222 :end 274) (sentence :text "En
tout cas il a du goût, car Bergotte est un charmant esprit" :start 275 :end 337) (sentence :text "» Et voyant
combien j’avais l’air d’admirer Bergotte, Swann qui ne parlait jamais
des gens qu’il connaissait fit, par bonté, une exception et me dit:" :start 338 :end 487)
 ))