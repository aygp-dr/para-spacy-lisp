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
 :text "Certes, ce qui palpite ainsi au fond de moi, ce doit être l’image, le
souvenir visuel, qui, lié à cette saveur, tente de la suivre jusqu’à
moi. Mais il se débat trop loin, trop confusément; à peine si je
perçois le reflet neutre où se confond l’insaisissable tourbillon des
couleurs remuées; mais je ne puis distinguer la forme, lui demander
comme au seul interprète possible, de me traduire le témoignage de sa
contemporaine, de son inséparable compagne, la saveur, lui demander de
m’apprendre de quelle circonstance particulière, de quelle époque du
passé il s’agit."
 :tokens 94
 :processed-at "2025-03-16T02:18:13.847102"
 :entities (list
  (entity :text "Certes," :label "ORG" :start 0 :end 7) (entity :text "Mais" :label "ORG" :start 144 :end 148)
 )
 :sentences (list
  (sentence :text "Certes, ce qui palpite ainsi au fond de moi, ce doit être l’image, le
souvenir visuel, qui, lié à cette saveur, tente de la suivre jusqu’à
moi" :start 0 :end 142) (sentence :text "Mais il se débat trop loin, trop confusément; à peine si je
perçois le reflet neutre où se confond l’insaisissable tourbillon des
couleurs remuées; mais je ne puis distinguer la forme, lui demander
comme au seul interprète possible, de me traduire le témoignage de sa
contemporaine, de son inséparable compagne, la saveur, lui demander de
m’apprendre de quelle circonstance particulière, de quelle époque du
passé il s’agit" :start 143 :end 567)
 ))