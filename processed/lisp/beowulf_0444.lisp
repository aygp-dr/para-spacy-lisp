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
 :text "--Bien vrai? répondit Mme Verdurin, comme si devant l’espérance d’une
telle faveur il n’y avait plus qu’à capituler. Peut-être aussi à force
de dire qu’elle serait malade, y avait-il des moments où elle ne se
rappelait plus que c’était un mensonge et prenait une âme de malade.
Or ceux-ci, fatigués d’être toujours obligés de faire dépendre de leur
sagesse la rareté de leurs accès, aiment se laisser aller à croire
qu’ils pourront faire impunément tout ce qui leur plaît et leur fait
mal d’habitude, à condition de se remettre en les mains d’un être
puissant, qui, sans qu’ils aient aucune peine à prendre, d’un mot ou
d’une pilule, les remettra sur pied."
 :tokens 112
 :processed-at "2025-03-16T02:18:14.266311"
 :entities (list
  (entity :text "--Bien" :label "ORG" :start 0 :end 6) (entity :text "Verdurin," :label "ORG" :start 26 :end 35)
 )
 :sentences (list
  (sentence :text "--Bien vrai? répondit Mme Verdurin, comme si devant l’espérance d’une
telle faveur il n’y avait plus qu’à capituler" :start 0 :end 115) (sentence :text "Peut-être aussi à force
de dire qu’elle serait malade, y avait-il des moments où elle ne se
rappelait plus que c’était un mensonge et prenait une âme de malade" :start 116 :end 276) (sentence :text "Or ceux-ci, fatigués d’être toujours obligés de faire dépendre de leur
sagesse la rareté de leurs accès, aiment se laisser aller à croire
qu’ils pourront faire impunément tout ce qui leur plaît et leur fait
mal d’habitude, à condition de se remettre en les mains d’un être
puissant, qui, sans qu’ils aient aucune peine à prendre, d’un mot ou
d’une pilule, les remettra sur pied" :start 277 :end 655)
 ))