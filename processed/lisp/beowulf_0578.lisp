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
 :text "De ceux qui aimaient à bibeloter, qui aimaient les vers, méprisaient
les bas calculs, rêvaient d’honneur et d’amour, elle faisait une élite
supérieure au reste de l’humanité. Il n’y avait pas besoin qu’on eût
réellement ces goûts pourvu qu’on les proclamât; d’un homme qui lui
avait avoué à dîner qu’il aimait à flâner, à se salir les doigts dans
les vieilles boutiques, qu’il ne serait jamais apprécié par ce siècle
commercial, car il ne se souciait pas de ses intérêts et qu’il était
pour cela d’un autre temps, elle revenait en disant: «Mais c’est une
âme adorable, un sensible, je ne m’en étais jamais doutée!» et elle se
sentait pour lui une immense et soudaine amitié. Mais, en revanche
ceux, qui comme Swann, avaient ces goûts, mais n’en parlaient pas, la
laissaient froide. Sans doute elle était obligée d’avouer que Swann ne
tenait pas à l’argent, mais elle ajoutait d’un air boudeur: «Mais lui,
ça n’est pas la même chose»; et en effet, ce qui parlait à son
imagination, ce n’était pas la pratique du désintéressement, c’en
était le vocabulaire."
 :tokens 180
 :processed-at "2025-03-16T02:18:14.404275"
 :entities (list
  (entity :text "«Mais" :label "ORG" :start 539 :end 544) (entity :text "Mais," :label "ORG" :start 675 :end 680) (entity :text "Swann," :label "ORG" :start 709 :end 715) (entity :text "Sans" :label "ORG" :start 782 :end 786) (entity :text "Swann" :label "ORG" :start 825 :end 830) (entity :text "«Mais" :label "ORG" :start 894 :end 899)
 )
 :sentences (list
  (sentence :text "De ceux qui aimaient à bibeloter, qui aimaient les vers, méprisaient
les bas calculs, rêvaient d’honneur et d’amour, elle faisait une élite
supérieure au reste de l’humanité" :start 0 :end 173) (sentence :text "Il n’y avait pas besoin qu’on eût
réellement ces goûts pourvu qu’on les proclamât; d’un homme qui lui
avait avoué à dîner qu’il aimait à flâner, à se salir les doigts dans
les vieilles boutiques, qu’il ne serait jamais apprécié par ce siècle
commercial, car il ne se souciait pas de ses intérêts et qu’il était
pour cela d’un autre temps, elle revenait en disant: «Mais c’est une
âme adorable, un sensible, je ne m’en étais jamais doutée!» et elle se
sentait pour lui une immense et soudaine amitié" :start 174 :end 673) (sentence :text "Mais, en revanche
ceux, qui comme Swann, avaient ces goûts, mais n’en parlaient pas, la
laissaient froide" :start 674 :end 780) (sentence :text "Sans doute elle était obligée d’avouer que Swann ne
tenait pas à l’argent, mais elle ajoutait d’un air boudeur: «Mais lui,
ça n’est pas la même chose»; et en effet, ce qui parlait à son
imagination, ce n’était pas la pratique du désintéressement, c’en
était le vocabulaire" :start 781 :end 1054)
 ))