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
 :text "--Je crois bien, c’est admirable, répondit Swann, c’est presque trop
beau, trop vivant pour moi, en ce moment; c’est un pays pour être
heureux. C’est peut-être parce que j’y ai vécu, mais les choses m’y
parlent tellement. Dès qu’il se lève un souffle d’air, que les blés
commencent à remuer, il me semble qu’il y a quelqu’un qui va arriver,
que je vais recevoir une nouvelle; et ces petites maisons au bord de
l’eau... je serais bien malheureux!"
 :tokens 78
 :processed-at "2025-03-16T02:18:14.723929"
 :entities (list
  (entity :text "--Je" :label "ORG" :start 0 :end 4) (entity :text "Swann," :label "ORG" :start 43 :end 49)
 )
 :sentences (list
  (sentence :text "--Je crois bien, c’est admirable, répondit Swann, c’est presque trop
beau, trop vivant pour moi, en ce moment; c’est un pays pour être
heureux" :start 0 :end 142) (sentence :text "C’est peut-être parce que j’y ai vécu, mais les choses m’y
parlent tellement" :start 143 :end 220) (sentence :text "Dès qu’il se lève un souffle d’air, que les blés
commencent à remuer, il me semble qu’il y a quelqu’un qui va arriver,
que je vais recevoir une nouvelle; et ces petites maisons au bord de
l’eau" :start 221 :end 415) (sentence :text "je serais bien malheureux!" :start 418 :end 445)
 ))