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
 :text "Quelquefois j’étais tiré de ma lecture, dès le milieu de l’après-midi
par la fille du jardinier, qui courait comme une folle, renversant sur
son passage un oranger, se coupant un doigt, se cassant une dent et
criant: «Les voilà, les voilà!» pour que Françoise et moi nous
accourions et ne manquions rien du spectacle. C’était les jours où,
pour des manœuvres de garnison, la troupe traversait Combray, prenant
généralement la rue Sainte-Hildegarde. Tandis que nos domestiques,
assis en rang sur des chaises en dehors de la grille, regardaient les
promeneurs dominicaux de Combray et se faisaient voir d’eux, la fille
du jardinier par la fente que laissaient entre elles deux maisons
lointaines de l’avenue de la Gare, avait aperçu l’éclat des casques.
Les domestiques avaient rentré précipitamment leurs chaises, car quand
les cuirassiers défilaient rue Sainte-Hildegarde, ils en remplissaient
toute la largeur, et le galop des chevaux rasait les maisons couvrant
les trottoirs submergés comme des berges qui offrent un lit trop
étroit à un torrent déchaîné."
 :tokens 167
 :processed-at "2025-03-16T02:18:13.953627"
 :entities (list
  (entity :text "Quelquefois" :label "ORG" :start 0 :end 11) (entity :text "«Les" :label "ORG" :start 217 :end 221) (entity :text "Françoise" :label "ORG" :start 250 :end 259) (entity :text "Combray," :label "ORG" :start 393 :end 401) (entity :text "Sainte-Hildegarde." :label "ORG" :start 430 :end 448) (entity :text "Tandis" :label "ORG" :start 449 :end 455) (entity :text "Combray" :label "ORG" :start 572 :end 579) (entity :text "Gare," :label "ORG" :start 712 :end 717) (entity :text "Sainte-Hildegarde," :label "ORG" :start 854 :end 872)
 )
 :sentences (list
  (sentence :text "Quelquefois j’étais tiré de ma lecture, dès le milieu de l’après-midi
par la fille du jardinier, qui courait comme une folle, renversant sur
son passage un oranger, se coupant un doigt, se cassant une dent et
criant: «Les voilà, les voilà!» pour que Françoise et moi nous
accourions et ne manquions rien du spectacle" :start 0 :end 316) (sentence :text "C’était les jours où,
pour des manœuvres de garnison, la troupe traversait Combray, prenant
généralement la rue Sainte-Hildegarde" :start 317 :end 447) (sentence :text "Tandis que nos domestiques,
assis en rang sur des chaises en dehors de la grille, regardaient les
promeneurs dominicaux de Combray et se faisaient voir d’eux, la fille
du jardinier par la fente que laissaient entre elles deux maisons
lointaines de l’avenue de la Gare, avait aperçu l’éclat des casques" :start 448 :end 750) (sentence :text "Les domestiques avaient rentré précipitamment leurs chaises, car quand
les cuirassiers défilaient rue Sainte-Hildegarde, ils en remplissaient
toute la largeur, et le galop des chevaux rasait les maisons couvrant
les trottoirs submergés comme des berges qui offrent un lit trop
étroit à un torrent déchaîné" :start 751 :end 1057)
 ))