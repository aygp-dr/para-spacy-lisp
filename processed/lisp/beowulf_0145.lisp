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
 :text "--«J’adore les artistes, répondit la dame en rose, il n’y a qu’eux qui
comprennent les femmes... Qu’eux et les êtres d’élite comme vous.
Excusez mon ignorance, ami. Qui est Vaulabelle? Est-ce les volumes
dorés qu’il y a dans la petite bibliothèque vitrée de votre boudoir?
Vous savez que vous m’avez promis de me les prêter, j’en aurai grand
soin.»"
 :tokens 59
 :processed-at "2025-03-16T02:18:13.937700"
 :entities (list
  (entity :text "Excusez" :label "ORG" :start 137 :end 144) (entity :text "Vaulabelle?" :label "ORG" :start 173 :end 184) (entity :text "Vous" :label "ORG" :start 273 :end 277)
 )
 :sentences (list
  (sentence :text "--«J’adore les artistes, répondit la dame en rose, il n’y a qu’eux qui
comprennent les femmes" :start 0 :end 93) (sentence :text "Qu’eux et les êtres d’élite comme vous" :start 96 :end 135) (sentence :text "Excusez mon ignorance, ami" :start 136 :end 163) (sentence :text "Qui est Vaulabelle? Est-ce les volumes
dorés qu’il y a dans la petite bibliothèque vitrée de votre boudoir?
Vous savez que vous m’avez promis de me les prêter, j’en aurai grand
soin" :start 164 :end 346) (sentence :text "»" :start 347 :end 348)
 ))