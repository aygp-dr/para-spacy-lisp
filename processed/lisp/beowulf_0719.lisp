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
 :text "Malgré cela il ne distinguait pas bien. D’ailleurs cela ne faisait
rien car il en avait assez vu pour se rendre compte qu’il s’agissait
d’un petit événement sans importance et qui ne touchait nullement à
des relations amoureuses, c’était quelque chose qui se rapportait à un
oncle d’Odette. Swann avait bien lu au commencement de la ligne: «J’ai
eu raison», mais ne comprenait pas ce qu’Odette avait eu raison de
faire, quand soudain, un mot qu’il n’avait pas pu déchiffrer d’abord,
apparut et éclaira le sens de la phrase tout entière: «J’ai eu raison
d’ouvrir, c’était mon oncle.» D’ouvrir! alors Forcheville était là
tantôt quand Swann avait sonné et elle l’avait fait partir, d’où le
bruit qu’il avait entendu."
 :tokens 119
 :processed-at "2025-03-16T02:18:14.546560"
 :entities (list
  (entity :text "Malgré" :label "ORG" :start 0 :end 6) (entity :text "Swann" :label "ORG" :start 291 :end 296) (entity :text "Forcheville" :label "ORG" :start 599 :end 610) (entity :text "Swann" :label "ORG" :start 633 :end 638)
 )
 :sentences (list
  (sentence :text "Malgré cela il ne distinguait pas bien" :start 0 :end 38) (sentence :text "D’ailleurs cela ne faisait
rien car il en avait assez vu pour se rendre compte qu’il s’agissait
d’un petit événement sans importance et qui ne touchait nullement à
des relations amoureuses, c’était quelque chose qui se rapportait à un
oncle d’Odette" :start 39 :end 289) (sentence :text "Swann avait bien lu au commencement de la ligne: «J’ai
eu raison», mais ne comprenait pas ce qu’Odette avait eu raison de
faire, quand soudain, un mot qu’il n’avait pas pu déchiffrer d’abord,
apparut et éclaira le sens de la phrase tout entière: «J’ai eu raison
d’ouvrir, c’était mon oncle" :start 290 :end 580) (sentence :text "» D’ouvrir! alors Forcheville était là
tantôt quand Swann avait sonné et elle l’avait fait partir, d’où le
bruit qu’il avait entendu" :start 581 :end 713)
 ))