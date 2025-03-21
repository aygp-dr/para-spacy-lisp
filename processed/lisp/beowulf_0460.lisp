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
 :text "Or, quelques minutes à peine après que le petit pianiste avait
commencé de jouer chez Mme Verdurin, tout d’un coup après une note
haute longuement tenue pendant deux mesures, il vit approcher,
s’échappant de sous cette sonorité prolongée et tendue comme un rideau
sonore pour cacher le mystère de son incubation, il reconnut, secrète,
bruissante et divisée, la phrase aérienne et odorante qu’il aimait. Et
elle était si particulière, elle avait un charme si individuel et
qu’aucun autre n’aurait pu remplacer, que ce fut pour Swann comme s’il
eût rencontré dans un salon ami une personne qu’il avait admirée dans
la rue et désespérait de jamais retrouver. À la fin, elle s’éloigna,
indicatrice, diligente, parmi les ramifications de son parfum,
laissant sur le visage de Swann le reflet de son sourire. Mais
maintenant il pouvait demander le nom de son inconnue (on lui dit que
c’était l’andante de la sonate pour piano et violon de Vinteuil), il
la tenait, il pourrait l’avoir chez lui aussi souvent qu’il voudrait,
essayer d’apprendre son langage et son secret."
 :tokens 175
 :processed-at "2025-03-16T02:18:14.281358"
 :entities (list
  (entity :text "Verdurin," :label "ORG" :start 90 :end 99) (entity :text "Swann" :label "ORG" :start 526 :end 531) (entity :text "Swann" :label "ORG" :start 771 :end 776) (entity :text "Mais" :label "ORG" :start 803 :end 807) (entity :text "Vinteuil)," :label "ORG" :start 933 :end 943)
 )
 :sentences (list
  (sentence :text "Or, quelques minutes à peine après que le petit pianiste avait
commencé de jouer chez Mme Verdurin, tout d’un coup après une note
haute longuement tenue pendant deux mesures, il vit approcher,
s’échappant de sous cette sonorité prolongée et tendue comme un rideau
sonore pour cacher le mystère de son incubation, il reconnut, secrète,
bruissante et divisée, la phrase aérienne et odorante qu’il aimait" :start 0 :end 401) (sentence :text "Et
elle était si particulière, elle avait un charme si individuel et
qu’aucun autre n’aurait pu remplacer, que ce fut pour Swann comme s’il
eût rencontré dans un salon ami une personne qu’il avait admirée dans
la rue et désespérait de jamais retrouver" :start 402 :end 654) (sentence :text "À la fin, elle s’éloigna,
indicatrice, diligente, parmi les ramifications de son parfum,
laissant sur le visage de Swann le reflet de son sourire" :start 655 :end 801) (sentence :text "Mais
maintenant il pouvait demander le nom de son inconnue (on lui dit que
c’était l’andante de la sonate pour piano et violon de Vinteuil), il
la tenait, il pourrait l’avoir chez lui aussi souvent qu’il voudrait,
essayer d’apprendre son langage et son secret" :start 802 :end 1062)
 ))