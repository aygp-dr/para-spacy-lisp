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
 :text "Si mes parents m’avaient permis, quand je lisais un livre, d’aller
visiter la région qu’il décrivait, j’aurais cru faire un pas
inestimable dans la conquête de la vérité. Car si on a la sensation
d’être toujours entouré de son âme, ce n’est pas comme d’une prison
immobile: plutôt on est comme emporté avec elle dans un perpétuel élan
pour la dépasser, pour atteindre à l’extérieur, avec une sorte de
découragement, entendant toujours autour de soi cette sonorité
identique qui n’est pas écho du dehors mais retentissement d’une
vibration interne. On cherche à retrouver dans les choses, devenues
par là précieuses, le reflet que notre âme a projeté sur elles; on est
déçu en constatant qu’elles semblent dépourvues dans la nature, du
charme qu’elles devaient, dans notre pensée, au voisinage de certaines
idées; parfois on convertit toutes les forces de cette âme en
habileté, en splendeur pour agir sur des êtres dont nous sentons bien
qu’ils sont situés en dehors de nous et que nous ne les atteindrons
jamais. Aussi, si j’imaginais toujours autour de la femme que
j’aimais, les lieux que je désirais le plus alors, si j’eusse voulu
que ce fût elle qui me les fît visiter, qui m’ouvrît l’accès d’un
monde inconnu, ce n’était pas par le hasard d’une simple association
de pensée; non, c’est que mes rêves de voyage et d’amour n’étaient que
des moments--que je sépare artificiellement aujourd’hui comme si je
pratiquais des sections à des hauteurs différentes d’un jet d’eau
irisé et en apparence immobile--dans un même et infléchissable
jaillissement de toutes les forces de ma vie."
 :tokens 262
 :processed-at "2025-03-16T02:18:13.951361"
 :entities (list
  
 )
 :sentences (list
  (sentence :text "Si mes parents m’avaient permis, quand je lisais un livre, d’aller
visiter la région qu’il décrivait, j’aurais cru faire un pas
inestimable dans la conquête de la vérité" :start 0 :end 169) (sentence :text "Car si on a la sensation
d’être toujours entouré de son âme, ce n’est pas comme d’une prison
immobile: plutôt on est comme emporté avec elle dans un perpétuel élan
pour la dépasser, pour atteindre à l’extérieur, avec une sorte de
découragement, entendant toujours autour de soi cette sonorité
identique qui n’est pas écho du dehors mais retentissement d’une
vibration interne" :start 170 :end 546) (sentence :text "On cherche à retrouver dans les choses, devenues
par là précieuses, le reflet que notre âme a projeté sur elles; on est
déçu en constatant qu’elles semblent dépourvues dans la nature, du
charme qu’elles devaient, dans notre pensée, au voisinage de certaines
idées; parfois on convertit toutes les forces de cette âme en
habileté, en splendeur pour agir sur des êtres dont nous sentons bien
qu’ils sont situés en dehors de nous et que nous ne les atteindrons
jamais" :start 547 :end 1012) (sentence :text "Aussi, si j’imaginais toujours autour de la femme que
j’aimais, les lieux que je désirais le plus alors, si j’eusse voulu
que ce fût elle qui me les fît visiter, qui m’ouvrît l’accès d’un
monde inconnu, ce n’était pas par le hasard d’une simple association
de pensée; non, c’est que mes rêves de voyage et d’amour n’étaient que
des moments--que je sépare artificiellement aujourd’hui comme si je
pratiquais des sections à des hauteurs différentes d’un jet d’eau
irisé et en apparence immobile--dans un même et infléchissable
jaillissement de toutes les forces de ma vie" :start 1013 :end 1583)
 ))