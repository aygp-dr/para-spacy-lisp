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
 :text "Il y aurait là les Cottard, peut-être Brichot. «Est-ce assez grotesque
cette vie de petites gens qui vivent les uns sur les autres, qui se
croiraient perdus, ma parole, s’ils ne se retrouvaient pas tous demain
à Chatou!» Hélas! il y aurait aussi le peintre, le peintre qui aimait
à «faire des mariages», qui inviterait Forcheville à venir avec Odette
à son atelier. Il voyait Odette avec une toilette trop habillée pour
cette partie de campagne, «car elle est si vulgaire et surtout, la
pauvre petite, elle est tellement bête!!!»"
 :tokens 90
 :processed-at "2025-03-16T02:18:14.567954"
 :entities (list
  (entity :text "Cottard," :label "ORG" :start 19 :end 27) (entity :text "Brichot." :label "ORG" :start 38 :end 46) (entity :text "Chatou!»" :label "ORG" :start 212 :end 220) (entity :text "Hélas!" :label "ORG" :start 221 :end 227) (entity :text "Forcheville" :label "ORG" :start 319 :end 330) (entity :text "Odette" :label "ORG" :start 344 :end 350) (entity :text "Odette" :label "ORG" :start 376 :end 382)
 )
 :sentences (list
  (sentence :text "Il y aurait là les Cottard, peut-être Brichot" :start 0 :end 45) (sentence :text "«Est-ce assez grotesque
cette vie de petites gens qui vivent les uns sur les autres, qui se
croiraient perdus, ma parole, s’ils ne se retrouvaient pas tous demain
à Chatou!» Hélas! il y aurait aussi le peintre, le peintre qui aimait
à «faire des mariages», qui inviterait Forcheville à venir avec Odette
à son atelier" :start 46 :end 364) (sentence :text "Il voyait Odette avec une toilette trop habillée pour
cette partie de campagne, «car elle est si vulgaire et surtout, la
pauvre petite, elle est tellement bête!!!»" :start 365 :end 529)
 ))