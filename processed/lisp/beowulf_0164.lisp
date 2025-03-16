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
 :text "La rue Sainte-Hildegarde tournait trop court pour qu’on pût voir venir
de loin, et c’était par cette fente entre les deux maisons de l’avenue
de la gare qu’on apercevait toujours de nouveaux casques courant et
brillant au soleil. Le jardinier aurait voulu savoir s’il y en avait
encore beaucoup à passer, et il avait soif, car le soleil tapait.
Alors tout d’un coup, sa fille s’élançant comme d’une place assiégée,
faisait une sortie, atteignait l’angle de la rue, et après avoir bravé
cent fois la mort, venait nous rapporter, avec une carafe de coco, la
nouvelle qu’ils étaient bien un mille qui venaient sans arrêter, du
côté de Thiberzy et de Méséglise. Françoise et le jardinier,
réconciliés, discutaient sur la conduite à tenir en cas de guerre:"
 :tokens 127
 :processed-at "2025-03-16T02:18:13.958009"
 :entities (list
  (entity :text "Sainte-Hildegarde" :label "ORG" :start 7 :end 24) (entity :text "Thiberzy" :label "ORG" :start 632 :end 640) (entity :text "Méséglise." :label "ORG" :start 647 :end 657) (entity :text "Françoise" :label "ORG" :start 658 :end 667)
 )
 :sentences (list
  (sentence :text "La rue Sainte-Hildegarde tournait trop court pour qu’on pût voir venir
de loin, et c’était par cette fente entre les deux maisons de l’avenue
de la gare qu’on apercevait toujours de nouveaux casques courant et
brillant au soleil" :start 0 :end 228) (sentence :text "Le jardinier aurait voulu savoir s’il y en avait
encore beaucoup à passer, et il avait soif, car le soleil tapait" :start 229 :end 343) (sentence :text "Alors tout d’un coup, sa fille s’élançant comme d’une place assiégée,
faisait une sortie, atteignait l’angle de la rue, et après avoir bravé
cent fois la mort, venait nous rapporter, avec une carafe de coco, la
nouvelle qu’ils étaient bien un mille qui venaient sans arrêter, du
côté de Thiberzy et de Méséglise" :start 344 :end 656) (sentence :text "Françoise et le jardinier,
réconciliés, discutaient sur la conduite à tenir en cas de guerre:" :start 657 :end 751)
 ))