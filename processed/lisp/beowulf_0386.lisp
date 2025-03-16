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
 :text "Mais au fur et à mesure que les «camarades» avaient pris plus de place
dans la vie de Mme Verdurin, les ennuyeux, les réprouvés, ce fut tout
ce qui retenait les amis loin d’elle, ce qui les empêchait quelquefois
d’être libres, ce fut la mère de l’un, la profession de l’autre, la
maison de campagne ou la mauvaise santé d’un troisième. Si le docteur
Cottard croyait devoir partir en sortant de table pour retourner
auprès d’un malade en danger: «Qui sait, lui disait Mme Verdurin, cela
lui fera peut-être beaucoup plus de bien que vous n’alliez pas le
déranger ce soir; il passera une bonne nuit sans vous; demain matin
vous irez de bonne heure et vous le trouverez guéri.» Dès le
commencement de décembre elle était malade à la pensée que les fidèles
«lâcheraient» pour le jour de Noël et le 1er janvier. La tante du
pianiste exigeait qu’il vînt dîner ce jour-là en famille chez sa mère
à elle:"
 :tokens 161
 :processed-at "2025-03-16T02:18:14.206580"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Verdurin," :label "ORG" :start 90 :end 99) (entity :text "Cottard" :label "ORG" :start 350 :end 357) (entity :text "«Qui" :label "ORG" :start 445 :end 449) (entity :text "Verdurin," :label "ORG" :start 471 :end 480) (entity :text "Noël" :label "ORG" :start 782 :end 786)
 )
 :sentences (list
  (sentence :text "Mais au fur et à mesure que les «camarades» avaient pris plus de place
dans la vie de Mme Verdurin, les ennuyeux, les réprouvés, ce fut tout
ce qui retenait les amis loin d’elle, ce qui les empêchait quelquefois
d’être libres, ce fut la mère de l’un, la profession de l’autre, la
maison de campagne ou la mauvaise santé d’un troisième" :start 0 :end 334) (sentence :text "Si le docteur
Cottard croyait devoir partir en sortant de table pour retourner
auprès d’un malade en danger: «Qui sait, lui disait Mme Verdurin, cela
lui fera peut-être beaucoup plus de bien que vous n’alliez pas le
déranger ce soir; il passera une bonne nuit sans vous; demain matin
vous irez de bonne heure et vous le trouverez guéri" :start 335 :end 671) (sentence :text "» Dès le
commencement de décembre elle était malade à la pensée que les fidèles
«lâcheraient» pour le jour de Noël et le 1er janvier" :start 672 :end 804) (sentence :text "La tante du
pianiste exigeait qu’il vînt dîner ce jour-là en famille chez sa mère
à elle:" :start 805 :end 895)
 ))