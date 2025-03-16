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
 :text "Quand il sortit le lendemain du banquet, il pleuvait à verse, il
n’avait à sa disposition que sa victoria; un ami lui proposa de le
reconduire chez lui en coupé, et comme Odette, par le fait qu’elle lui
avait demandé de venir, lui avait donné la certitude qu’elle
n’attendait personne, c’est l’esprit tranquille et le cœur content
que, plutôt que de partir ainsi dans la pluie, il serait rentré chez
lui se coucher. Mais peut-être, si elle voyait qu’il n’avait pas l’air
de tenir à passer toujours avec elle, sans aucune exception, la fin de
la soirée, négligerait-elle de la lui réserver, justement une fois où
il l’aurait particulièrement désiré."
 :tokens 110
 :processed-at "2025-03-16T02:18:14.522779"
 :entities (list
  (entity :text "Quand" :label "ORG" :start 0 :end 5) (entity :text "Odette," :label "ORG" :start 171 :end 178) (entity :text "Mais" :label "ORG" :start 416 :end 420)
 )
 :sentences (list
  (sentence :text "Quand il sortit le lendemain du banquet, il pleuvait à verse, il
n’avait à sa disposition que sa victoria; un ami lui proposa de le
reconduire chez lui en coupé, et comme Odette, par le fait qu’elle lui
avait demandé de venir, lui avait donné la certitude qu’elle
n’attendait personne, c’est l’esprit tranquille et le cœur content
que, plutôt que de partir ainsi dans la pluie, il serait rentré chez
lui se coucher" :start 0 :end 414) (sentence :text "Mais peut-être, si elle voyait qu’il n’avait pas l’air
de tenir à passer toujours avec elle, sans aucune exception, la fin de
la soirée, négligerait-elle de la lui réserver, justement une fois où
il l’aurait particulièrement désiré" :start 415 :end 647)
 ))