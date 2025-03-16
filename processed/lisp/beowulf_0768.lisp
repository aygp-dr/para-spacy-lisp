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
 :text "Et Swann était peut-être encore plus touché de la voir ainsi lui
adresser en présence de Forcheville, non seulement ces paroles de
tendresse, de prédilection, mais encore certaines critiques comme: «Je
suis sûre que vous n’avez pas encore répondu à vos amis pour votre
dîner de dimanche. N’y allez pas si vous ne voulez pas, mais soyez au
moins poli», ou: «Avez-vous laissé seulement ici votre essai sur Ver
Meer pour pouvoir l’avancer un peu demain? Quel paresseux! Je vous
ferai travailler, moi!» qui prouvaient qu’Odette se tenait au courant
de ses invitations dans le monde et de ses études d’art, qu’ils
avaient bien une vie à eux deux. Et en disant cela elle lui adressait
un sourire au fond duquel il la sentait toute à lui."
 :tokens 127
 :processed-at "2025-03-16T02:18:14.595520"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 3 :end 8) (entity :text "Forcheville," :label "ORG" :start 89 :end 101) (entity :text "Meer" :label "ORG" :start 408 :end 412) (entity :text "Quel" :label "ORG" :start 451 :end 455)
 )
 :sentences (list
  (sentence :text "Et Swann était peut-être encore plus touché de la voir ainsi lui
adresser en présence de Forcheville, non seulement ces paroles de
tendresse, de prédilection, mais encore certaines critiques comme: «Je
suis sûre que vous n’avez pas encore répondu à vos amis pour votre
dîner de dimanche" :start 0 :end 286) (sentence :text "N’y allez pas si vous ne voulez pas, mais soyez au
moins poli», ou: «Avez-vous laissé seulement ici votre essai sur Ver
Meer pour pouvoir l’avancer un peu demain? Quel paresseux! Je vous
ferai travailler, moi!» qui prouvaient qu’Odette se tenait au courant
de ses invitations dans le monde et de ses études d’art, qu’ils
avaient bien une vie à eux deux" :start 287 :end 640) (sentence :text "Et en disant cela elle lui adressait
un sourire au fond duquel il la sentait toute à lui" :start 641 :end 730)
 ))