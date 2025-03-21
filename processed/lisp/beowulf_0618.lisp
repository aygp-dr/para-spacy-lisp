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
 :text "--Du reste, je crois que j’aurai une déception. Je ne crois pas que
cela vaille Serge Panine, l’idole de Mme de Crécy. Voilà au moins des
sujets qui ont du fond, qui font réfléchir; mais donner une recette de
salade sur la scène du Théâtre-Français! Tandis que Serge Panine! Du
reste, comme tout ce qui vient de la plume de Georges Ohnet, c’est
toujours si bien écrit. Je ne sais pas si vous connaissez Le Maître de
Forges que je préférerais encore à Serge Panine."
 :tokens 85
 :processed-at "2025-03-16T02:18:14.447270"
 :entities (list
  (entity :text "--Du" :label "ORG" :start 0 :end 4) (entity :text "Serge" :label "ORG" :start 80 :end 85) (entity :text "Panine," :label "ORG" :start 86 :end 93) (entity :text "Crécy." :label "ORG" :start 112 :end 118) (entity :text "Voilà" :label "ORG" :start 119 :end 124) (entity :text "Théâtre-Français!" :label "ORG" :start 232 :end 249) (entity :text "Tandis" :label "ORG" :start 250 :end 256) (entity :text "Serge" :label "ORG" :start 261 :end 266) (entity :text "Panine!" :label "ORG" :start 267 :end 274) (entity :text "Georges" :label "ORG" :start 324 :end 331) (entity :text "Ohnet," :label "ORG" :start 332 :end 338) (entity :text "Maître" :label "ORG" :start 406 :end 412) (entity :text "Forges" :label "ORG" :start 416 :end 422) (entity :text "Serge" :label "ORG" :start 451 :end 456) (entity :text "Panine." :label "ORG" :start 457 :end 464)
 )
 :sentences (list
  (sentence :text "--Du reste, je crois que j’aurai une déception" :start 0 :end 46) (sentence :text "Je ne crois pas que
cela vaille Serge Panine, l’idole de Mme de Crécy" :start 47 :end 117) (sentence :text "Voilà au moins des
sujets qui ont du fond, qui font réfléchir; mais donner une recette de
salade sur la scène du Théâtre-Français! Tandis que Serge Panine! Du
reste, comme tout ce qui vient de la plume de Georges Ohnet, c’est
toujours si bien écrit" :start 118 :end 367) (sentence :text "Je ne sais pas si vous connaissez Le Maître de
Forges que je préférerais encore à Serge Panine" :start 368 :end 463)
 ))