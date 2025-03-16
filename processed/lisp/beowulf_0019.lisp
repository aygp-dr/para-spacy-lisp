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
 :text "A Combray, tous les jours dès la fin de l’après-midi, longtemps avant
le moment où il faudrait me mettre au lit et rester, sans dormir, loin
de ma mère et de ma grand’mère, ma chambre à coucher redevenait le
point fixe et douloureux de mes préoccupations. On avait bien inventé,
pour me distraire les soirs où on me trouvait l’air trop malheureux,
de me donner une lanterne magique, dont, en attendant l’heure du
dîner, on coiffait ma lampe; et, à l’instar des premiers architectes
et maîtres verriers de l’âge gothique, elle substituait à l’opacité
des murs d’impalpables irisations, de surnaturelles apparitions
multicolores, où des légendes étaient dépeintes comme dans un vitrail
vacillant et momentané. Mais ma tristesse n’en était qu’accrue, parce
que rien que le changement d’éclairage détruisait l’habitude que
j’avais de ma chambre et grâce à quoi, sauf le supplice du coucher,
elle m’était devenue supportable. Maintenant je ne la reconnaissais
plus et j’y étais inquiet, comme dans une chambre d’hôtel ou de
«chalet», où je fusse arrivé pour la première fois en descendant de
chemin de fer."
 :tokens 179
 :processed-at "2025-03-16T02:18:13.788363"
 :entities (list
  (entity :text "Combray," :label "ORG" :start 2 :end 10) (entity :text "Mais" :label "ORG" :start 708 :end 712) (entity :text "Maintenant" :label "ORG" :start 921 :end 931)
 )
 :sentences (list
  (sentence :text "A Combray, tous les jours dès la fin de l’après-midi, longtemps avant
le moment où il faudrait me mettre au lit et rester, sans dormir, loin
de ma mère et de ma grand’mère, ma chambre à coucher redevenait le
point fixe et douloureux de mes préoccupations" :start 0 :end 254) (sentence :text "On avait bien inventé,
pour me distraire les soirs où on me trouvait l’air trop malheureux,
de me donner une lanterne magique, dont, en attendant l’heure du
dîner, on coiffait ma lampe; et, à l’instar des premiers architectes
et maîtres verriers de l’âge gothique, elle substituait à l’opacité
des murs d’impalpables irisations, de surnaturelles apparitions
multicolores, où des légendes étaient dépeintes comme dans un vitrail
vacillant et momentané" :start 255 :end 706) (sentence :text "Mais ma tristesse n’en était qu’accrue, parce
que rien que le changement d’éclairage détruisait l’habitude que
j’avais de ma chambre et grâce à quoi, sauf le supplice du coucher,
elle m’était devenue supportable" :start 707 :end 919) (sentence :text "Maintenant je ne la reconnaissais
plus et j’y étais inquiet, comme dans une chambre d’hôtel ou de
«chalet», où je fusse arrivé pour la première fois en descendant de
chemin de fer" :start 920 :end 1100)
 ))