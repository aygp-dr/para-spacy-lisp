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
 :text "Mais là tout lui en apportait. Il voulut éloigner Odette de
Forcheville, l’emmener quelques jours dans le Midi. Mais il croyait
qu’elle était désirée par tous les hommes qui se trouvaient dans
l’hôtel et qu’elle-même les désirait. Aussi lui qui jadis en voyage
recherchait les gens nouveaux, les assemblées nombreuses, on le voyait
sauvage, fuyant la société des hommes comme si elle l’eût cruellement
blessé. Et comment n’aurait-il pas été misanthrope quand dans tout
homme il voyait un amant possible pour Odette? Et ainsi sa jalousie
plus encore que n’avait fait le goût voluptueux et riant qu’il avait
d’abord pour Odette, altérait le caractère de Swann et changeait du
tout au tout, aux yeux des autres, l’aspect même des signes extérieurs
par lesquels ce caractère se manifestait."
 :tokens 127
 :processed-at "2025-03-16T02:18:14.549385"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Odette" :label "ORG" :start 50 :end 56) (entity :text "Forcheville," :label "ORG" :start 60 :end 72) (entity :text "Midi." :label "ORG" :start 106 :end 111) (entity :text "Mais" :label "ORG" :start 112 :end 116) (entity :text "Odette?" :label "ORG" :start 508 :end 515) (entity :text "Odette," :label "ORG" :start 619 :end 626) (entity :text "Swann" :label "ORG" :start 652 :end 657)
 )
 :sentences (list
  (sentence :text "Mais là tout lui en apportait" :start 0 :end 29) (sentence :text "Il voulut éloigner Odette de
Forcheville, l’emmener quelques jours dans le Midi" :start 30 :end 110) (sentence :text "Mais il croyait
qu’elle était désirée par tous les hommes qui se trouvaient dans
l’hôtel et qu’elle-même les désirait" :start 111 :end 229) (sentence :text "Aussi lui qui jadis en voyage
recherchait les gens nouveaux, les assemblées nombreuses, on le voyait
sauvage, fuyant la société des hommes comme si elle l’eût cruellement
blessé" :start 230 :end 408) (sentence :text "Et comment n’aurait-il pas été misanthrope quand dans tout
homme il voyait un amant possible pour Odette? Et ainsi sa jalousie
plus encore que n’avait fait le goût voluptueux et riant qu’il avait
d’abord pour Odette, altérait le caractère de Swann et changeait du
tout au tout, aux yeux des autres, l’aspect même des signes extérieurs
par lesquels ce caractère se manifestait" :start 409 :end 785)
 ))