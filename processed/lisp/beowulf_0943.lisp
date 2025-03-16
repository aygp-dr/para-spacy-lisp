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
 :text "Ce second coup porté à Swann était plus atroce encore que le premier.
Jamais il n’avait supposé que ce fût une chose aussi récente, cachée à
ses yeux qui n’avaient pas su la découvrir, non dans un passé qu’il
n’avait pas connu, mais dans des soirs qu’il se rappelait si bien,
qu’il avait vécus avec Odette, qu’il avait cru connus si bien par lui
et qui maintenant prenaient rétrospectivement quelque chose de fourbe
et d’atroce; au milieu d’eux tout d’un coup se creusait cette
ouverture béante, ce moment dans l’Ile du Bois. Odette sans être
intelligente avait le charme du naturel. Elle avait raconté, elle
avait mimé cette scène avec tant de simplicité que Swann haletant
voyait tout; le bâillement d’Odette, le petit rocher. Il l’entendait
répondre--gaiement, hélas!: «Cette blague»!!! Il sentait qu’elle ne
dirait rien de plus ce soir, qu’il n’y avait aucune révélation
nouvelle à attendre en ce moment; il se taisait; il lui dit:"
 :tokens 157
 :processed-at "2025-03-16T02:18:14.788039"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 23 :end 28) (entity :text "Jamais" :label "ORG" :start 70 :end 76) (entity :text "Odette," :label "ORG" :start 299 :end 306) (entity :text "Bois." :label "ORG" :start 520 :end 525) (entity :text "Odette" :label "ORG" :start 526 :end 532) (entity :text "Elle" :label "ORG" :start 584 :end 588) (entity :text "Swann" :label "ORG" :start 660 :end 665) (entity :text "«Cette" :label "ORG" :start 772 :end 778)
 )
 :sentences (list
  (sentence :text "Ce second coup porté à Swann était plus atroce encore que le premier" :start 0 :end 68) (sentence :text "Jamais il n’avait supposé que ce fût une chose aussi récente, cachée à
ses yeux qui n’avaient pas su la découvrir, non dans un passé qu’il
n’avait pas connu, mais dans des soirs qu’il se rappelait si bien,
qu’il avait vécus avec Odette, qu’il avait cru connus si bien par lui
et qui maintenant prenaient rétrospectivement quelque chose de fourbe
et d’atroce; au milieu d’eux tout d’un coup se creusait cette
ouverture béante, ce moment dans l’Ile du Bois" :start 69 :end 524) (sentence :text "Odette sans être
intelligente avait le charme du naturel" :start 525 :end 582) (sentence :text "Elle avait raconté, elle
avait mimé cette scène avec tant de simplicité que Swann haletant
voyait tout; le bâillement d’Odette, le petit rocher" :start 583 :end 727) (sentence :text "Il l’entendait
répondre--gaiement, hélas!: «Cette blague»!!! Il sentait qu’elle ne
dirait rien de plus ce soir, qu’il n’y avait aucune révélation
nouvelle à attendre en ce moment; il se taisait; il lui dit:" :start 728 :end 935)
 ))