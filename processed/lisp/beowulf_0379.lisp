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
 :text "C’est ainsi que je restais souvent jusqu’au matin à songer au temps de
Combray, à mes tristes soirées sans sommeil, à tant de jours aussi
dont l’image m’avait été plus récemment rendue par la saveur--ce qu’on
aurait appelé à Combray le «parfum»--d’une tasse de thé, et par
association de souvenirs à ce que, bien des années après avoir quitté
cette petite ville, j’avais appris, au sujet d’un amour que Swann
avait eu avant ma naissance, avec cette précision dans les détails
plus facile à obtenir quelquefois pour la vie de personnes mortes il y
a des siècles que pour celle de nos meilleurs amis, et qui semble
impossible comme semblait impossible de causer d’une ville à une
autre--tant qu’on ignore le biais par lequel cette impossibilité a été
tournée. Tous ces souvenirs ajoutés les uns aux autres ne formaient
plus qu’une masse, mais non sans qu’on ne pût distinguer entre
eux,--entre les plus anciens, et ceux plus récents, nés d’un parfum,
puis ceux qui n’étaient que les souvenirs d’une autre personne de qui
je les avais appris-- sinon des fissures, des failles véritables, du
moins ces veinures, ces bigarrures de coloration, qui dans certaines
roches, dans certains marbres, révèlent des différences d’origine,
d’âge, de «formation»."
 :tokens 205
 :processed-at "2025-03-16T02:18:14.199742"
 :entities (list
  (entity :text "Combray," :label "ORG" :start 71 :end 79) (entity :text "Combray" :label "ORG" :start 225 :end 232) (entity :text "Swann" :label "ORG" :start 403 :end 408) (entity :text "Tous" :label "ORG" :start 758 :end 762)
 )
 :sentences (list
  (sentence :text "C’est ainsi que je restais souvent jusqu’au matin à songer au temps de
Combray, à mes tristes soirées sans sommeil, à tant de jours aussi
dont l’image m’avait été plus récemment rendue par la saveur--ce qu’on
aurait appelé à Combray le «parfum»--d’une tasse de thé, et par
association de souvenirs à ce que, bien des années après avoir quitté
cette petite ville, j’avais appris, au sujet d’un amour que Swann
avait eu avant ma naissance, avec cette précision dans les détails
plus facile à obtenir quelquefois pour la vie de personnes mortes il y
a des siècles que pour celle de nos meilleurs amis, et qui semble
impossible comme semblait impossible de causer d’une ville à une
autre--tant qu’on ignore le biais par lequel cette impossibilité a été
tournée" :start 0 :end 756) (sentence :text "Tous ces souvenirs ajoutés les uns aux autres ne formaient
plus qu’une masse, mais non sans qu’on ne pût distinguer entre
eux,--entre les plus anciens, et ceux plus récents, nés d’un parfum,
puis ceux qui n’étaient que les souvenirs d’une autre personne de qui
je les avais appris-- sinon des fissures, des failles véritables, du
moins ces veinures, ces bigarrures de coloration, qui dans certaines
roches, dans certains marbres, révèlent des différences d’origine,
d’âge, de «formation»" :start 757 :end 1245)
 ))