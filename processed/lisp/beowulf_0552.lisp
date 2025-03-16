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
 :text "Elle tenait à la main un bouquet de catleyas et Swann vit, sous sa
fanchon de dentelle, qu’elle avait dans les cheveux des fleurs de
cette même orchidée attachées à une aigrette en plumes de cygnes. Elle
était habillée sous sa mantille, d’un flot de velours noir qui, par un
rattrapé oblique, découvrait en un large triangle le bas d’une jupe de
faille blanche et laissait voir un empiècement, également de faille
blanche, à l’ouverture du corsage décolleté, où étaient enfoncées
d’autres fleurs de catleyas. Elle était à peine remise de la frayeur
que Swann lui avait causée quand un obstacle fit faire un écart au
cheval. Ils furent vivement déplacés, elle avait jeté un cri et
restait toute palpitante, sans respiration."
 :tokens 122
 :processed-at "2025-03-16T02:18:14.373639"
 :entities (list
  (entity :text "Elle" :label "ORG" :start 0 :end 4) (entity :text "Swann" :label "ORG" :start 48 :end 53) (entity :text "Elle" :label "ORG" :start 199 :end 203) (entity :text "Elle" :label "ORG" :start 509 :end 513) (entity :text "Swann" :label "ORG" :start 553 :end 558)
 )
 :sentences (list
  (sentence :text "Elle tenait à la main un bouquet de catleyas et Swann vit, sous sa
fanchon de dentelle, qu’elle avait dans les cheveux des fleurs de
cette même orchidée attachées à une aigrette en plumes de cygnes" :start 0 :end 197) (sentence :text "Elle
était habillée sous sa mantille, d’un flot de velours noir qui, par un
rattrapé oblique, découvrait en un large triangle le bas d’une jupe de
faille blanche et laissait voir un empiècement, également de faille
blanche, à l’ouverture du corsage décolleté, où étaient enfoncées
d’autres fleurs de catleyas" :start 198 :end 507) (sentence :text "Elle était à peine remise de la frayeur
que Swann lui avait causée quand un obstacle fit faire un écart au
cheval" :start 508 :end 622) (sentence :text "Ils furent vivement déplacés, elle avait jeté un cri et
restait toute palpitante, sans respiration" :start 623 :end 722)
 ))