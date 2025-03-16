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
 :text "Mme Cottard qui était modeste et parlait peu, savait pourtant ne pas
manquer d’assurance quand une heureuse inspiration lui avait fait
trouver un mot juste. Elle sentait qu’il aurait du succès, cela la
mettait en confiance, et ce qu’elle en faisait était moins pour
briller que pour être utile à la carrière de son mari. Aussi ne
laissa-t-elle pas échapper le mot de salade que venait de prononcer
Mme Verdurin."
 :tokens 70
 :processed-at "2025-03-16T02:18:14.441772"
 :entities (list
  (entity :text "Cottard" :label "ORG" :start 4 :end 11) (entity :text "Elle" :label "ORG" :start 157 :end 161) (entity :text "Verdurin." :label "ORG" :start 402 :end 411)
 )
 :sentences (list
  (sentence :text "Mme Cottard qui était modeste et parlait peu, savait pourtant ne pas
manquer d’assurance quand une heureuse inspiration lui avait fait
trouver un mot juste" :start 0 :end 155) (sentence :text "Elle sentait qu’il aurait du succès, cela la
mettait en confiance, et ce qu’elle en faisait était moins pour
briller que pour être utile à la carrière de son mari" :start 156 :end 319) (sentence :text "Aussi ne
laissa-t-elle pas échapper le mot de salade que venait de prononcer
Mme Verdurin" :start 320 :end 410)
 ))