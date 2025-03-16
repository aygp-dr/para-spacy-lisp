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
 :text "--«Oh! pas avant midi, répondait ma tante d’un ton résigné, tout en
jetant sur la pendule un coup d’œil inquiet, mais furtif pour ne pas
laisser voir qu’elle, qui avait renoncé à tout, trouvait pourtant, à
apprendre que Mme Goupil avait à déjeuner, un plaisir aussi vif, et
qui se ferait malheureusement attendre encore un peu plus d’une heure.
Et encore cela tombera pendant mon déjeuner!» ajouta-t-elle à mi-voix
pour elle-même. Son déjeuner lui était une distraction suffisante pour
qu’elle n’en souhaitât pas une autre en même temps. «Vous n’oublierez
pas au moins de me donner mes œufs à la crème dans une assiette
plate?» C’étaient les seules qui fussent ornées de sujets, et ma tante
s’amusait à chaque repas à lire la légende de celle qu’on lui servait
ce jour-là. Elle mettait ses lunettes, déchiffrait: Alibaba et
quarante voleurs, Aladin ou la Lampe merveilleuse, et disait en
souriant: Très bien, très bien."
 :tokens 153
 :processed-at "2025-03-16T02:18:13.878721"
 :entities (list
  (entity :text "--«Oh!" :label "ORG" :start 0 :end 6) (entity :text "Goupil" :label "ORG" :start 224 :end 230) (entity :text "«Vous" :label "ORG" :start 538 :end 543) (entity :text "Elle" :label "ORG" :start 773 :end 777) (entity :text "Lampe" :label "ORG" :start 855 :end 860) (entity :text "Très" :label "ORG" :start 898 :end 902)
 )
 :sentences (list
  (sentence :text "--«Oh! pas avant midi, répondait ma tante d’un ton résigné, tout en
jetant sur la pendule un coup d’œil inquiet, mais furtif pour ne pas
laisser voir qu’elle, qui avait renoncé à tout, trouvait pourtant, à
apprendre que Mme Goupil avait à déjeuner, un plaisir aussi vif, et
qui se ferait malheureusement attendre encore un peu plus d’une heure" :start 0 :end 343) (sentence :text "Et encore cela tombera pendant mon déjeuner!» ajouta-t-elle à mi-voix
pour elle-même" :start 344 :end 429) (sentence :text "Son déjeuner lui était une distraction suffisante pour
qu’elle n’en souhaitât pas une autre en même temps" :start 430 :end 536) (sentence :text "«Vous n’oublierez
pas au moins de me donner mes œufs à la crème dans une assiette
plate?» C’étaient les seules qui fussent ornées de sujets, et ma tante
s’amusait à chaque repas à lire la légende de celle qu’on lui servait
ce jour-là" :start 537 :end 771) (sentence :text "Elle mettait ses lunettes, déchiffrait: Alibaba et
quarante voleurs, Aladin ou la Lampe merveilleuse, et disait en
souriant: Très bien, très bien" :start 772 :end 918)
 ))