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
 :text "--Demain, comptez-y, mon bel ami, mais je ne viendrai pas! j’ai un
grand goûter; après-demain non plus, je vais chez une amie pour voir
de ses fenêtres l’arrivée du roi Théodose, ce sera superbe, et le
lendemain encore à Michel Strogoff et puis après, cela va être bientôt
Noël et les vacances du jour de l’An. Peut-être on va m’emmener dans
le midi. Ce que ce serait chic! quoique cela me fera manquer un arbre
de Noël; en tous cas si je reste à Paris, je ne viendrai pas ici car
j’irai faire des visites avec maman. Adieu, voilà papa qui m’appelle."
 :tokens 102
 :processed-at "2025-03-16T02:18:14.864538"
 :entities (list
  (entity :text "--Demain," :label "ORG" :start 0 :end 9) (entity :text "Théodose," :label "ORG" :start 169 :end 178) (entity :text "Michel" :label "ORG" :start 221 :end 227) (entity :text "Strogoff" :label "ORG" :start 228 :end 236) (entity :text "Noël" :label "ORG" :start 273 :end 277) (entity :text "Noël;" :label "ORG" :start 415 :end 420) (entity :text "Paris," :label "ORG" :start 447 :end 453)
 )
 :sentences (list
  (sentence :text "--Demain, comptez-y, mon bel ami, mais je ne viendrai pas! j’ai un
grand goûter; après-demain non plus, je vais chez une amie pour voir
de ses fenêtres l’arrivée du roi Théodose, ce sera superbe, et le
lendemain encore à Michel Strogoff et puis après, cela va être bientôt
Noël et les vacances du jour de l’An" :start 0 :end 309) (sentence :text "Peut-être on va m’emmener dans
le midi" :start 310 :end 349) (sentence :text "Ce que ce serait chic! quoique cela me fera manquer un arbre
de Noël; en tous cas si je reste à Paris, je ne viendrai pas ici car
j’irai faire des visites avec maman" :start 350 :end 516) (sentence :text "Adieu, voilà papa qui m’appelle" :start 517 :end 549)
 ))