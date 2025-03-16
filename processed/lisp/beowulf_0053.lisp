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
 :text "Il en est ainsi de notre passé. C’est peine perdue que nous cherchions
à l’évoquer, tous les efforts de notre intelligence sont inutiles. Il
est caché hors de son domaine et de sa portée, en quelque objet
matériel (en la sensation que nous donnerait cet objet matériel), que
nous ne soupçonnons pas. Cet objet, il dépend du hasard que nous le
rencontrions avant de mourir, ou que nous ne le rencontrions pas."
 :tokens 72
 :processed-at "2025-03-16T02:18:13.843575"
 :entities (list
  
 )
 :sentences (list
  (sentence :text "Il en est ainsi de notre passé" :start 0 :end 30) (sentence :text "C’est peine perdue que nous cherchions
à l’évoquer, tous les efforts de notre intelligence sont inutiles" :start 31 :end 136) (sentence :text "Il
est caché hors de son domaine et de sa portée, en quelque objet
matériel (en la sensation que nous donnerait cet objet matériel), que
nous ne soupçonnons pas" :start 137 :end 298) (sentence :text "Cet objet, il dépend du hasard que nous le
rencontrions avant de mourir, ou que nous ne le rencontrions pas" :start 299 :end 407)
 ))