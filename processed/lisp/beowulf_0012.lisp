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
 :text "Je me rendormais, et parfois je n’avais plus que de courts réveils
d’un instant, le temps d’entendre les craquements organiques des
boiseries, d’ouvrir les yeux pour fixer le kaléidoscope de
l’obscurité, de goûter grâce à une lueur momentanée de conscience le
sommeil où étaient plongés les meubles, la chambre, le tout dont je
n’étais qu’une petite partie et à l’insensibilité duquel je retournais
vite m’unir. Ou bien en dormant j’avais rejoint sans effort un âge à
jamais révolu de ma vie primitive, retrouvé telle de mes terreurs
enfantines comme celle que mon grand-oncle me tirât par mes boucles et
qu’avait dissipée le jour,--date pour moi d’une ère nouvelle,--où on les
avait coupées. J’avais oublié cet événement pendant mon sommeil, j’en
retrouvais le souvenir aussitôt que j’avais réussi à m’éveiller pour
échapper aux mains de mon grand-oncle, mais par mesure de précaution
j’entourais complètement ma tête de mon oreiller avant de retourner
dans le monde des rêves."
 :tokens 156
 :processed-at "2025-03-16T02:18:13.780673"
 :entities (list
  
 )
 :sentences (list
  (sentence :text "Je me rendormais, et parfois je n’avais plus que de courts réveils
d’un instant, le temps d’entendre les craquements organiques des
boiseries, d’ouvrir les yeux pour fixer le kaléidoscope de
l’obscurité, de goûter grâce à une lueur momentanée de conscience le
sommeil où étaient plongés les meubles, la chambre, le tout dont je
n’étais qu’une petite partie et à l’insensibilité duquel je retournais
vite m’unir" :start 0 :end 410) (sentence :text "Ou bien en dormant j’avais rejoint sans effort un âge à
jamais révolu de ma vie primitive, retrouvé telle de mes terreurs
enfantines comme celle que mon grand-oncle me tirât par mes boucles et
qu’avait dissipée le jour,--date pour moi d’une ère nouvelle,--où on les
avait coupées" :start 411 :end 691) (sentence :text "J’avais oublié cet événement pendant mon sommeil, j’en
retrouvais le souvenir aussitôt que j’avais réussi à m’éveiller pour
échapper aux mains de mon grand-oncle, mais par mesure de précaution
j’entourais complètement ma tête de mon oreiller avant de retourner
dans le monde des rêves" :start 692 :end 977)
 ))