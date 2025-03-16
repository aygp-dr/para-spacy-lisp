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
 :text "Un homme qui dort, tient en cercle autour de lui le fil des heures,
l’ordre des années et des mondes. Il les consulte d’instinct en
s’éveillant et y lit en une seconde le point de la terre qu’il occupe,
le temps qui s’est écoulé jusqu’à son réveil; mais leurs rangs peuvent
se mêler, se rompre. Que vers le matin après quelque insomnie, le
sommeil le prenne en train de lire, dans une posture trop différente
de celle où il dort habituellement, il suffit de son bras soulevé pour
arrêter et faire reculer le soleil, et à la première minute de son
réveil, il ne saura plus l’heure, il estimera qu’il vient à peine de
se coucher. Que s’il s’assoupit dans une position encore plus déplacée
et divergente, par exemple après dîner assis dans un fauteuil, alors
le bouleversement sera complet dans les mondes désorbités, le fauteuil
magique le fera voyager à toute vitesse dans le temps et dans
l’espace, et au moment d’ouvrir les paupières, il se croira couché
quelques mois plus tôt dans une autre contrée. Mais il suffisait que,
dans mon lit même, mon sommeil fût profond et détendît entièrement mon
esprit; alors celui-ci lâchait le plan du lieu où je m’étais endormi,
et quand je m’éveillais au milieu de la nuit, comme j’ignorais où je
me trouvais, je ne savais même pas au premier instant qui j’étais;
j’avais seulement dans sa simplicité première, le sentiment de
l’existence comme il peut frémir au fond d’un animal: j’étais plus
dénué que l’homme des cavernes; mais alors le souvenir--non encore du
lieu où j’étais, mais de quelques-uns de ceux que j’avais habités et
où j’aurais pu être--venait à moi comme un secours d’en haut pour me
tirer du néant d’où je n’aurais pu sortir tout seul; je passais en une
seconde par-dessus des siècles de civilisation, et l’image confusément
entrevue de lampes à pétrole, puis de chemises à col rabattu,
recomposaient peu à peu les traits originaux de mon moi."
 :tokens 330
 :processed-at "2025-03-16T02:18:13.782629"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 1003 :end 1007)
 )
 :sentences (list
  (sentence :text "Un homme qui dort, tient en cercle autour de lui le fil des heures,
l’ordre des années et des mondes" :start 0 :end 100) (sentence :text "Il les consulte d’instinct en
s’éveillant et y lit en une seconde le point de la terre qu’il occupe,
le temps qui s’est écoulé jusqu’à son réveil; mais leurs rangs peuvent
se mêler, se rompre" :start 101 :end 293) (sentence :text "Que vers le matin après quelque insomnie, le
sommeil le prenne en train de lire, dans une posture trop différente
de celle où il dort habituellement, il suffit de son bras soulevé pour
arrêter et faire reculer le soleil, et à la première minute de son
réveil, il ne saura plus l’heure, il estimera qu’il vient à peine de
se coucher" :start 294 :end 626) (sentence :text "Que s’il s’assoupit dans une position encore plus déplacée
et divergente, par exemple après dîner assis dans un fauteuil, alors
le bouleversement sera complet dans les mondes désorbités, le fauteuil
magique le fera voyager à toute vitesse dans le temps et dans
l’espace, et au moment d’ouvrir les paupières, il se croira couché
quelques mois plus tôt dans une autre contrée" :start 627 :end 1001) (sentence :text "Mais il suffisait que,
dans mon lit même, mon sommeil fût profond et détendît entièrement mon
esprit; alors celui-ci lâchait le plan du lieu où je m’étais endormi,
et quand je m’éveillais au milieu de la nuit, comme j’ignorais où je
me trouvais, je ne savais même pas au premier instant qui j’étais;
j’avais seulement dans sa simplicité première, le sentiment de
l’existence comme il peut frémir au fond d’un animal: j’étais plus
dénué que l’homme des cavernes; mais alors le souvenir--non encore du
lieu où j’étais, mais de quelques-uns de ceux que j’avais habités et
où j’aurais pu être--venait à moi comme un secours d’en haut pour me
tirer du néant d’où je n’aurais pu sortir tout seul; je passais en une
seconde par-dessus des siècles de civilisation, et l’image confusément
entrevue de lampes à pétrole, puis de chemises à col rabattu,
recomposaient peu à peu les traits originaux de mon moi" :start 1002 :end 1900)
 ))