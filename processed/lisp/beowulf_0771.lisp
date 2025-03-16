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
 :text "Après ces tranquilles soirées, les soupçons de Swann étaient calmés;
il bénissait Odette et le lendemain, dès le matin, il faisait envoyer
chez elle les plus beaux bijoux, parce que ces bontés de la veille
avaient excité ou sa gratitude, ou le désir de les voir se renouveler,
ou un paroxysme d’amour qui avait besoin de se dépenser."
 :tokens 58
 :processed-at "2025-03-16T02:18:14.598837"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 47 :end 52) (entity :text "Odette" :label "ORG" :start 82 :end 88)
 )
 :sentences (list
  (sentence :text "Après ces tranquilles soirées, les soupçons de Swann étaient calmés;
il bénissait Odette et le lendemain, dès le matin, il faisait envoyer
chez elle les plus beaux bijoux, parce que ces bontés de la veille
avaient excité ou sa gratitude, ou le désir de les voir se renouveler,
ou un paroxysme d’amour qui avait besoin de se dépenser" :start 0 :end 332)
 ))