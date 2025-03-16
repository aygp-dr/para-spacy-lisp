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
 :text "Elle avait deviné que Françoise n’aimait pas son gendre et qu’il lui
gâtait le plaisir qu’elle avait à être avec sa fille, avec qui elle ne
causait pas aussi librement quand il était là. Aussi, quand Françoise
allait les voir, à quelques lieues de Combray, maman lui disait en
souriant: «N’est-ce pas Françoise, si Julien a été obligé de
s’absenter et si vous avez Marguerite à vous toute seule pour toute la
journée, vous serez désolée, mais vous vous ferez une raison?» Et
Françoise disait en riant: «Madame sait tout; madame est pire que les
rayons X (elle disait x avec une difficulté affectée et un sourire
pour se railler elle-même, ignorante, d’employer ce terme savant),
qu’on a fait venir pour Mme Octave et qui voient ce que vous avez dans
le cœur», et disparaissait, confuse qu’on s’occupât d’elle, peut-être
pour qu’on ne la vît pas pleurer; maman était la première personne qui
lui donnât cette douce émotion de sentir que sa vie, ses bonheurs, ses
chagrins de paysanne pouvaient présenter de l’intérêt, être un motif
de joie ou de tristesse pour une autre qu’elle-même. Ma tante se
résignait à se priver un peu d’elle pendant notre séjour, sachant
combien ma mère appréciait le service de cette bonne si intelligente
et active, qui était aussi belle dès cinq heures du matin dans sa
cuisine, sous son bonnet dont le tuyautage éclatant et fixe avait
l’air d’être en biscuit, que pour aller à la grand’messe; qui faisait
tout bien, travaillant comme un cheval, qu’elle fût bien portante ou
non, mais sans bruit, sans avoir l’air de rien faire, la seule des
bonnes de ma tante qui, quand maman demandait de l’eau chaude ou du
café noir, les apportait vraiment bouillants; elle était un de ces
serviteurs qui, dans une maison, sont à la fois ceux qui déplaisent le
plus au premier abord à un étranger, peut-être parce qu’ils ne
prennent pas la peine de faire sa conquête et n’ont pas pour lui de
prévenance, sachant très bien qu’ils n’ont aucun besoin de lui, qu’on
cesserait de le recevoir plutôt que de les renvoyer; et qui sont en
revanche ceux à qui tiennent le plus les maîtres qui ont éprouvé leur
capacités réelles, et ne se soucient pas de cet agrément superficiel,
de ce bavardage servile qui fait favorablement impression à un
visiteur, mais qui recouvre souvent une inéducable nullité."
 :tokens 398
 :processed-at "2025-03-16T02:18:13.861063"
 :entities (list
  (entity :text "Elle" :label "ORG" :start 0 :end 4) (entity :text "Françoise" :label "ORG" :start 22 :end 31) (entity :text "Françoise" :label "ORG" :start 200 :end 209) (entity :text "Combray," :label "ORG" :start 248 :end 256) (entity :text "Françoise," :label "ORG" :start 301 :end 311) (entity :text "Julien" :label "ORG" :start 315 :end 321) (entity :text "Marguerite" :label "ORG" :start 365 :end 375) (entity :text "Françoise" :label "ORG" :start 475 :end 484) (entity :text "«Madame" :label "ORG" :start 502 :end 509) (entity :text "Octave" :label "ORG" :start 707 :end 713)
 )
 :sentences (list
  (sentence :text "Elle avait deviné que Françoise n’aimait pas son gendre et qu’il lui
gâtait le plaisir qu’elle avait à être avec sa fille, avec qui elle ne
causait pas aussi librement quand il était là" :start 0 :end 185) (sentence :text "Aussi, quand Françoise
allait les voir, à quelques lieues de Combray, maman lui disait en
souriant: «N’est-ce pas Françoise, si Julien a été obligé de
s’absenter et si vous avez Marguerite à vous toute seule pour toute la
journée, vous serez désolée, mais vous vous ferez une raison?» Et
Françoise disait en riant: «Madame sait tout; madame est pire que les
rayons X (elle disait x avec une difficulté affectée et un sourire
pour se railler elle-même, ignorante, d’employer ce terme savant),
qu’on a fait venir pour Mme Octave et qui voient ce que vous avez dans
le cœur», et disparaissait, confuse qu’on s’occupât d’elle, peut-être
pour qu’on ne la vît pas pleurer; maman était la première personne qui
lui donnât cette douce émotion de sentir que sa vie, ses bonheurs, ses
chagrins de paysanne pouvaient présenter de l’intérêt, être un motif
de joie ou de tristesse pour une autre qu’elle-même" :start 186 :end 1082) (sentence :text "Ma tante se
résignait à se priver un peu d’elle pendant notre séjour, sachant
combien ma mère appréciait le service de cette bonne si intelligente
et active, qui était aussi belle dès cinq heures du matin dans sa
cuisine, sous son bonnet dont le tuyautage éclatant et fixe avait
l’air d’être en biscuit, que pour aller à la grand’messe; qui faisait
tout bien, travaillant comme un cheval, qu’elle fût bien portante ou
non, mais sans bruit, sans avoir l’air de rien faire, la seule des
bonnes de ma tante qui, quand maman demandait de l’eau chaude ou du
café noir, les apportait vraiment bouillants; elle était un de ces
serviteurs qui, dans une maison, sont à la fois ceux qui déplaisent le
plus au premier abord à un étranger, peut-être parce qu’ils ne
prennent pas la peine de faire sa conquête et n’ont pas pour lui de
prévenance, sachant très bien qu’ils n’ont aucun besoin de lui, qu’on
cesserait de le recevoir plutôt que de les renvoyer; et qui sont en
revanche ceux à qui tiennent le plus les maîtres qui ont éprouvé leur
capacités réelles, et ne se soucient pas de cet agrément superficiel,
de ce bavardage servile qui fait favorablement impression à un
visiteur, mais qui recouvre souvent une inéducable nullité" :start 1083 :end 2305)
 ))