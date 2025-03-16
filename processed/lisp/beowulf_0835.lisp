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
 :text "--Ecoute, je vais te dire, dit-elle à Mme de Gallardon, il faut demain
soir que j’aille chez une amie qui m’a demandé mon jour depuis
longtemps. Si elle nous emmène au théâtre, il n’y aura pas, avec la
meilleure volonté, possibilité que j’aille chez toi; mais si nous
restons chez elle, comme je sais que nous serons seuls, je pourrai la
quitter."
 :tokens 62
 :processed-at "2025-03-16T02:18:14.674895"
 :entities (list
  (entity :text "--Ecoute," :label "ORG" :start 0 :end 9) (entity :text "Gallardon," :label "ORG" :start 45 :end 55)
 )
 :sentences (list
  (sentence :text "--Ecoute, je vais te dire, dit-elle à Mme de Gallardon, il faut demain
soir que j’aille chez une amie qui m’a demandé mon jour depuis
longtemps" :start 0 :end 143) (sentence :text "Si elle nous emmène au théâtre, il n’y aura pas, avec la
meilleure volonté, possibilité que j’aille chez toi; mais si nous
restons chez elle, comme je sais que nous serons seuls, je pourrai la
quitter" :start 144 :end 345)
 ))