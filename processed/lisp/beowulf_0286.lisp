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
 :text "Legrandin pris au dépourvu par cette question à un moment où ses yeux
étaient fixés sur mon père, ne put les détourner, mais les attachant
de seconde en seconde avec plus d’intensité--et tout en souriant
tristement--sur les yeux de son interlocuteur, avec un air d’amitié et
de franchise et de ne pas craindre de le regarder en face, il sembla
lui avoir traversé la figure comme si elle fût devenue transparente,
et voir en ce moment bien au delà derrière elle un nuage vivement
coloré qui lui créait un alibi mental et qui lui permettrait d’établir
qu’au moment où on lui avait demandé s’il connaissait quelqu’un à
Balbec, il pensait à autre chose et n’avait pas entendu la question.
Habituellement de tels regards font dire à l’interlocuteur: «A quoi
pensez-vous donc?» Mais mon père curieux, irrité et cruel, reprit:"
 :tokens 139
 :processed-at "2025-03-16T02:18:14.088353"
 :entities (list
  (entity :text "Legrandin" :label "ORG" :start 0 :end 9) (entity :text "Balbec," :label "ORG" :start 616 :end 623) (entity :text "Habituellement" :label "ORG" :start 685 :end 699) (entity :text "Mais" :label "ORG" :start 772 :end 776)
 )
 :sentences (list
  (sentence :text "Legrandin pris au dépourvu par cette question à un moment où ses yeux
étaient fixés sur mon père, ne put les détourner, mais les attachant
de seconde en seconde avec plus d’intensité--et tout en souriant
tristement--sur les yeux de son interlocuteur, avec un air d’amitié et
de franchise et de ne pas craindre de le regarder en face, il sembla
lui avoir traversé la figure comme si elle fût devenue transparente,
et voir en ce moment bien au delà derrière elle un nuage vivement
coloré qui lui créait un alibi mental et qui lui permettrait d’établir
qu’au moment où on lui avait demandé s’il connaissait quelqu’un à
Balbec, il pensait à autre chose et n’avait pas entendu la question" :start 0 :end 683) (sentence :text "Habituellement de tels regards font dire à l’interlocuteur: «A quoi
pensez-vous donc?» Mais mon père curieux, irrité et cruel, reprit:" :start 684 :end 819)
 ))