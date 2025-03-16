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
 :text "--«Vous rappelez-vous que Swann a dit hier que, comme sa femme et sa
fille partaient pour Reims, il en profiterait pour aller passer
vingt-quatre heures à Paris? Nous pourrions longer le parc, puisque
ces dames ne sont pas là, cela nous abrégerait d’autant.»"
 :tokens 43
 :processed-at "2025-03-16T02:18:14.103185"
 :entities (list
  (entity :text "--«Vous" :label "ORG" :start 0 :end 7) (entity :text "Swann" :label "ORG" :start 26 :end 31) (entity :text "Reims," :label "ORG" :start 90 :end 96) (entity :text "Paris?" :label "ORG" :start 155 :end 161) (entity :text "Nous" :label "ORG" :start 162 :end 166)
 )
 :sentences (list
  (sentence :text "--«Vous rappelez-vous que Swann a dit hier que, comme sa femme et sa
fille partaient pour Reims, il en profiterait pour aller passer
vingt-quatre heures à Paris? Nous pourrions longer le parc, puisque
ces dames ne sont pas là, cela nous abrégerait d’autant" :start 0 :end 256) (sentence :text "»" :start 257 :end 258)
 ))