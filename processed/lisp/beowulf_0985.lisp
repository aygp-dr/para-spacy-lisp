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
 :text "Car, moi qui ne pensais plus qu’à ne jamais rester un jour sans voir
Gilberte (au point qu’une fois ma grand’mère n’étant pas rentrée pour
l’heure du dîner, je ne pus m’empêcher de me dire tout de suite que si
elle avait été écrasée par une voiture, je ne pourrais pas aller de
quelque temps aux Champs-Élysées; on n’aime plus personne dès qu’on
aime) pourtant ces moments où j’étais auprès d’elle et que depuis la
veille j’avais si impatiemment attendus, pour lesquels j’avais
tremblé, auxquels j’aurais sacrifié tout le reste, n’étaient nullement
des moments heureux; et je le savais bien car c’était les seuls
moments de ma vie sur lesquels je concentrasse une attention
méticuleuse, acharnée, et elle ne découvrait pas en eux un atome de
plaisir."
 :tokens 127
 :processed-at "2025-03-16T02:18:14.849317"
 :entities (list
  (entity :text "Car," :label "ORG" :start 0 :end 4) (entity :text "Gilberte" :label "ORG" :start 69 :end 77) (entity :text "Champs-Élysées;" :label "ORG" :start 296 :end 311)
 )
 :sentences (list
  (sentence :text "Car, moi qui ne pensais plus qu’à ne jamais rester un jour sans voir
Gilberte (au point qu’une fois ma grand’mère n’étant pas rentrée pour
l’heure du dîner, je ne pus m’empêcher de me dire tout de suite que si
elle avait été écrasée par une voiture, je ne pourrais pas aller de
quelque temps aux Champs-Élysées; on n’aime plus personne dès qu’on
aime) pourtant ces moments où j’étais auprès d’elle et que depuis la
veille j’avais si impatiemment attendus, pour lesquels j’avais
tremblé, auxquels j’aurais sacrifié tout le reste, n’étaient nullement
des moments heureux; et je le savais bien car c’était les seuls
moments de ma vie sur lesquels je concentrasse une attention
méticuleuse, acharnée, et elle ne découvrait pas en eux un atome de
plaisir" :start 0 :end 749)
 ))