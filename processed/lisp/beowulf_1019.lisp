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
 :text "Les jours où Gilberte m’avait annoncé qu’elle ne devait pas venir aux
Champs-Élysées, je tâchais de faire des promenades qui me
rapprochassent un peu d’elle. Parfois j’emmenais Françoise en
pèlerinage devant la maison qu’habitaient les Swann. Je lui faisais
répéter sans fin ce que, par l’institutrice, elle avait appris
relativement à Mme Swann. «Il paraît qu’elle a bien confiance à des
médailles. Jamais elle ne partira en voyage si elle a entendu la
chouette, ou bien comme un tic-tac d’horloge dans le mur, ou si elle a
vu un chat à minuit, ou si le bois d’un meuble, il a craqué. Ah! c’est
une personne très croyante!» J’étais si amoureux de Gilberte que si
sur le chemin j’apercevais leur vieux maître d’hôtel promenant un
chien, l’émotion m’obligeait à m’arrêter, j’attachais sur ses favoris
blancs des regards pleins de passion. Françoise me disait:"
 :tokens 142
 :processed-at "2025-03-16T02:18:14.891896"
 :entities (list
  (entity :text "Gilberte" :label "ORG" :start 13 :end 21) (entity :text "Champs-Élysées," :label "ORG" :start 70 :end 85) (entity :text "Parfois" :label "ORG" :start 158 :end 165) (entity :text "Françoise" :label "ORG" :start 177 :end 186) (entity :text "Swann." :label "ORG" :start 236 :end 242) (entity :text "Swann." :label "ORG" :start 340 :end 346) (entity :text "Jamais" :label "ORG" :start 400 :end 406) (entity :text "Gilberte" :label "ORG" :start 648 :end 656) (entity :text "Françoise" :label "ORG" :start 838 :end 847)
 )
 :sentences (list
  (sentence :text "Les jours où Gilberte m’avait annoncé qu’elle ne devait pas venir aux
Champs-Élysées, je tâchais de faire des promenades qui me
rapprochassent un peu d’elle" :start 0 :end 156) (sentence :text "Parfois j’emmenais Françoise en
pèlerinage devant la maison qu’habitaient les Swann" :start 157 :end 241) (sentence :text "Je lui faisais
répéter sans fin ce que, par l’institutrice, elle avait appris
relativement à Mme Swann" :start 242 :end 345) (sentence :text "«Il paraît qu’elle a bien confiance à des
médailles" :start 346 :end 398) (sentence :text "Jamais elle ne partira en voyage si elle a entendu la
chouette, ou bien comme un tic-tac d’horloge dans le mur, ou si elle a
vu un chat à minuit, ou si le bois d’un meuble, il a craqué" :start 399 :end 584) (sentence :text "Ah! c’est
une personne très croyante!» J’étais si amoureux de Gilberte que si
sur le chemin j’apercevais leur vieux maître d’hôtel promenant un
chien, l’émotion m’obligeait à m’arrêter, j’attachais sur ses favoris
blancs des regards pleins de passion" :start 585 :end 836) (sentence :text "Françoise me disait:" :start 837 :end 858)
 ))