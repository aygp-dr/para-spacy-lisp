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
 :text "Aussi,--sous le prétexte qu’une leçon qui avait été déplacée tombait
maintenant si mal qu’elle m’avait empêché plusieurs fois et
m’empêcherait encore de voir mon oncle--un jour, autre que celui qui
était réservé aux visites que nous lui faisions, profitant de ce que
mes parents avaient déjeuné de bonne heure, je sortis et au lieu
d’aller regarder la colonne d’affiches, pour quoi on me laissait aller
seul, je courus jusqu’à lui. Je remarquai devant sa porte une voiture
attelée de deux chevaux qui avaient aux œillères un œillet rouge comme
avait le cocher à sa boutonnière. De l’escalier j’entendis un rire et
une voix de femme, et dès que j’eus sonné, un silence, puis le bruit
de portes qu’on fermait. Le valet de chambre vint ouvrir, et en me
voyant parut embarrassé, me dit que mon oncle était très occupé, ne
pourrait sans doute pas me recevoir et tandis qu’il allait pourtant le
prévenir la même voix que j’avais entendue disait: «Oh, si! laisse-le
entrer; rien qu’une minute, cela m’amuserait tant. Sur la photographie
qui est sur ton bureau, il ressemble tant à sa maman, ta nièce, dont
la photographie est à côté de la sienne, n’est-ce pas? Je voudrais le
voir rien qu’un instant, ce gosse.»"
 :tokens 206
 :processed-at "2025-03-16T02:18:13.923889"
 :entities (list
  (entity :text "«Oh," :label "ORG" :start 940 :end 944)
 )
 :sentences (list
  (sentence :text "Aussi,--sous le prétexte qu’une leçon qui avait été déplacée tombait
maintenant si mal qu’elle m’avait empêché plusieurs fois et
m’empêcherait encore de voir mon oncle--un jour, autre que celui qui
était réservé aux visites que nous lui faisions, profitant de ce que
mes parents avaient déjeuné de bonne heure, je sortis et au lieu
d’aller regarder la colonne d’affiches, pour quoi on me laissait aller
seul, je courus jusqu’à lui" :start 0 :end 430) (sentence :text "Je remarquai devant sa porte une voiture
attelée de deux chevaux qui avaient aux œillères un œillet rouge comme
avait le cocher à sa boutonnière" :start 431 :end 576) (sentence :text "De l’escalier j’entendis un rire et
une voix de femme, et dès que j’eus sonné, un silence, puis le bruit
de portes qu’on fermait" :start 577 :end 706) (sentence :text "Le valet de chambre vint ouvrir, et en me
voyant parut embarrassé, me dit que mon oncle était très occupé, ne
pourrait sans doute pas me recevoir et tandis qu’il allait pourtant le
prévenir la même voix que j’avais entendue disait: «Oh, si! laisse-le
entrer; rien qu’une minute, cela m’amuserait tant" :start 707 :end 1008) (sentence :text "Sur la photographie
qui est sur ton bureau, il ressemble tant à sa maman, ta nièce, dont
la photographie est à côté de la sienne, n’est-ce pas? Je voudrais le
voir rien qu’un instant, ce gosse" :start 1009 :end 1202) (sentence :text "»" :start 1203 :end 1204)
 ))