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
 :text "Mais d’autres fois se mettait à tomber la pluie dont nous avait
menacés le capucin que l’opticien avait à sa devanture; les gouttes
d’eau comme des oiseaux migrateurs qui prennent leur vol tous
ensemble, descendaient à rangs pressés du ciel. Elles ne se séparent
point, elles ne vont pas à l’aventure pendant la rapide traversée,
mais chacune tenant sa place, attire à elle celle qui la suit et le
ciel en est plus obscurci qu’au départ des hirondelles. Nous nous
réfugions dans le bois. Quand leur voyage semblait fini,
quelques-unes, plus débiles, plus lentes, arrivaient encore. Mais nous
ressortions de notre abri, car les gouttes se plaisent aux feuillages,
et la terre était déjà presque séchée que plus d’une s’attardait à
jouer sur les nervures d’une feuille, et suspendue à la pointe,
reposée, brillant au soleil, tout d’un coup se laissait glisser de
toute la hauteur de la branche et nous tombait sur le nez."
 :tokens 155
 :processed-at "2025-03-16T02:18:14.133786"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Elles" :label "ORG" :start 242 :end 247) (entity :text "Nous" :label "ORG" :start 454 :end 458) (entity :text "Quand" :label "ORG" :start 488 :end 493) (entity :text "Mais" :label "ORG" :start 582 :end 586)
 )
 :sentences (list
  (sentence :text "Mais d’autres fois se mettait à tomber la pluie dont nous avait
menacés le capucin que l’opticien avait à sa devanture; les gouttes
d’eau comme des oiseaux migrateurs qui prennent leur vol tous
ensemble, descendaient à rangs pressés du ciel" :start 0 :end 240) (sentence :text "Elles ne se séparent
point, elles ne vont pas à l’aventure pendant la rapide traversée,
mais chacune tenant sa place, attire à elle celle qui la suit et le
ciel en est plus obscurci qu’au départ des hirondelles" :start 241 :end 452) (sentence :text "Nous nous
réfugions dans le bois" :start 453 :end 486) (sentence :text "Quand leur voyage semblait fini,
quelques-unes, plus débiles, plus lentes, arrivaient encore" :start 487 :end 580) (sentence :text "Mais nous
ressortions de notre abri, car les gouttes se plaisent aux feuillages,
et la terre était déjà presque séchée que plus d’une s’attardait à
jouer sur les nervures d’une feuille, et suspendue à la pointe,
reposée, brillant au soleil, tout d’un coup se laissait glisser de
toute la hauteur de la branche et nous tombait sur le nez" :start 581 :end 918)
 ))