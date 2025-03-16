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
 :text "Comme il avait dû lui faire de la peine! Certes il trouvait des
raisons valables à son ressentiment contre elle, mais elles n’auraient
pas suffi à le lui faire éprouver s’il ne l’avait pas autant aimée.
N’avait-il pas eu des griefs aussi graves contre d’autres femmes,
auxquelles il eût néanmoins volontiers rendu service aujourd’hui,
étant contre elles sans colère parce qu’il ne les aimait plus. S’il
devait jamais un jour se trouver dans le même état d’indifférence
vis-à-vis d’Odette, il comprendrait que c’était sa jalousie seule qui
lui avait fait trouver quelque chose d’atroce, d’impardonnable, à ce
désir, au fond si naturel, provenant d’un peu d’enfantillage et aussi
d’une certaine délicatesse d’âme, de pouvoir à son tour, puisqu’une
occasion s’en présentait, rendre des politesses aux Verdurin, jouer à
la maîtresse de maison."
 :tokens 132
 :processed-at "2025-03-16T02:18:14.608568"
 :entities (list
  (entity :text "Comme" :label "ORG" :start 0 :end 5) (entity :text "Certes" :label "ORG" :start 41 :end 47) (entity :text "Verdurin," :label "ORG" :start 798 :end 807)
 )
 :sentences (list
  (sentence :text "Comme il avait dû lui faire de la peine! Certes il trouvait des
raisons valables à son ressentiment contre elle, mais elles n’auraient
pas suffi à le lui faire éprouver s’il ne l’avait pas autant aimée" :start 0 :end 201) (sentence :text "N’avait-il pas eu des griefs aussi graves contre d’autres femmes,
auxquelles il eût néanmoins volontiers rendu service aujourd’hui,
étant contre elles sans colère parce qu’il ne les aimait plus" :start 202 :end 396) (sentence :text "S’il
devait jamais un jour se trouver dans le même état d’indifférence
vis-à-vis d’Odette, il comprendrait que c’était sa jalousie seule qui
lui avait fait trouver quelque chose d’atroce, d’impardonnable, à ce
désir, au fond si naturel, provenant d’un peu d’enfantillage et aussi
d’une certaine délicatesse d’âme, de pouvoir à son tour, puisqu’une
occasion s’en présentait, rendre des politesses aux Verdurin, jouer à
la maîtresse de maison" :start 397 :end 838)
 ))