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
 :text "Quelques mois après, si mon grand-père demandait au nouvel ami de
Swann: «Et Swann, le voyez-vous toujours beaucoup?» la figure de
l’interlocuteur s’allongeait: «Ne prononcez jamais son nom devant
moi!»--«Mais je croyais que vous étiez si liés...» Il avait été ainsi
pendant quelques mois le familier de cousins de ma grand’mère, dînant
presque chaque jour chez eux. Brusquement il cessa de venir, sans
avoir prévenu. On le crut malade, et la cousine de ma grand’mère
allait envoyer demander de ses nouvelles quand à l’office elle trouva
une lettre de lui qui traînait par mégarde dans le livre de comptes de
la cuisinière. Il y annonçait à cette femme qu’il allait quitter
Paris, qu’il ne pourrait plus venir. Elle était sa maîtresse, et au
moment de rompre, c’était elle seule qu’il avait jugé utile d’avertir."
 :tokens 134
 :processed-at "2025-03-16T02:18:14.227741"
 :entities (list
  (entity :text "Quelques" :label "ORG" :start 0 :end 8) (entity :text "Swann:" :label "ORG" :start 66 :end 72) (entity :text "Swann," :label "ORG" :start 77 :end 83) (entity :text "Brusquement" :label "ORG" :start 367 :end 378) (entity :text "Paris," :label "ORG" :start 674 :end 680) (entity :text "Elle" :label "ORG" :start 711 :end 715)
 )
 :sentences (list
  (sentence :text "Quelques mois après, si mon grand-père demandait au nouvel ami de
Swann: «Et Swann, le voyez-vous toujours beaucoup?» la figure de
l’interlocuteur s’allongeait: «Ne prononcez jamais son nom devant
moi!»--«Mais je croyais que vous étiez si liés" :start 0 :end 243) (sentence :text "» Il avait été ainsi
pendant quelques mois le familier de cousins de ma grand’mère, dînant
presque chaque jour chez eux" :start 246 :end 365) (sentence :text "Brusquement il cessa de venir, sans
avoir prévenu" :start 366 :end 416) (sentence :text "On le crut malade, et la cousine de ma grand’mère
allait envoyer demander de ses nouvelles quand à l’office elle trouva
une lettre de lui qui traînait par mégarde dans le livre de comptes de
la cuisinière" :start 417 :end 622) (sentence :text "Il y annonçait à cette femme qu’il allait quitter
Paris, qu’il ne pourrait plus venir" :start 623 :end 709) (sentence :text "Elle était sa maîtresse, et au
moment de rompre, c’était elle seule qu’il avait jugé utile d’avertir" :start 710 :end 811)
 ))