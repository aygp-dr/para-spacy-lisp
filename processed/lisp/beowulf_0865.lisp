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
 :text "--Mais je ne vous dis pas, mais ça n’est pas moins laid pour ça. Je
comprends très bien qu’on ne puisse pas avoir de jolies choses, mais
au moins qu’on n’ait pas de choses ridicules. Qu’est-ce que vous
voulez? je ne connais rien de plus pompier, de plus bourgeois que cet
horrible style avec ces commodes qui ont des têtes de cygnes comme des
baignoires."
 :tokens 65
 :processed-at "2025-03-16T02:18:14.700166"
 :entities (list
  (entity :text "--Mais" :label "ORG" :start 0 :end 6)
 )
 :sentences (list
  (sentence :text "--Mais je ne vous dis pas, mais ça n’est pas moins laid pour ça" :start 0 :end 63) (sentence :text "Je
comprends très bien qu’on ne puisse pas avoir de jolies choses, mais
au moins qu’on n’ait pas de choses ridicules" :start 64 :end 181) (sentence :text "Qu’est-ce que vous
voulez? je ne connais rien de plus pompier, de plus bourgeois que cet
horrible style avec ces commodes qui ont des têtes de cygnes comme des
baignoires" :start 182 :end 353)
 ))