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
 :text "Je me redisais en étouffant mes sanglots les mots où Gilberte avait
laissé éclater sa joie de ne pas venir de longtemps aux
Champs-Élysées. Mais déjà le charme dont, par son simple
fonctionnement, se remplissait mon esprit dès qu’il songeait à elle,
la position particulière, unique,--fût elle affligeante,--où me plaçait
inévitablement par rapport à Gilberte, la contrainte interne d’un pli
mental, avaient commencé à ajouter, même à cette marque
d’indifférence, quelque chose de romanesque, et au milieu de mes
larmes se formait un sourire qui n’était que l’ébauche timide d’un
baiser. Et quand vint l’heure du courrier, je me dis ce soir-là comme
tous les autres: Je vais recevoir une lettre de Gilberte, elle va me
dire enfin qu’elle n’a jamais cessé de m’aimer, et m’expliquera la
raison mystérieuse pour laquelle elle a été forcée de me le cacher
jusqu’ici, de faire semblant de pouvoir être heureuse sans me voir, la
raison pour laquelle elle a pris l’apparence de la Gilberte simple
camarade."
 :tokens 163
 :processed-at "2025-03-16T02:18:14.867222"
 :entities (list
  (entity :text "Gilberte" :label "ORG" :start 53 :end 61) (entity :text "Champs-Élysées." :label "ORG" :start 124 :end 139) (entity :text "Mais" :label "ORG" :start 140 :end 144) (entity :text "Gilberte," :label "ORG" :start 351 :end 360) (entity :text "Gilberte," :label "ORG" :start 698 :end 707) (entity :text "Gilberte" :label "ORG" :start 975 :end 983)
 )
 :sentences (list
  (sentence :text "Je me redisais en étouffant mes sanglots les mots où Gilberte avait
laissé éclater sa joie de ne pas venir de longtemps aux
Champs-Élysées" :start 0 :end 138) (sentence :text "Mais déjà le charme dont, par son simple
fonctionnement, se remplissait mon esprit dès qu’il songeait à elle,
la position particulière, unique,--fût elle affligeante,--où me plaçait
inévitablement par rapport à Gilberte, la contrainte interne d’un pli
mental, avaient commencé à ajouter, même à cette marque
d’indifférence, quelque chose de romanesque, et au milieu de mes
larmes se formait un sourire qui n’était que l’ébauche timide d’un
baiser" :start 139 :end 586) (sentence :text "Et quand vint l’heure du courrier, je me dis ce soir-là comme
tous les autres: Je vais recevoir une lettre de Gilberte, elle va me
dire enfin qu’elle n’a jamais cessé de m’aimer, et m’expliquera la
raison mystérieuse pour laquelle elle a été forcée de me le cacher
jusqu’ici, de faire semblant de pouvoir être heureuse sans me voir, la
raison pour laquelle elle a pris l’apparence de la Gilberte simple
camarade" :start 587 :end 999)
 ))