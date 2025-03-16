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
 :text "Parfois c’était après quelques jours où elle ne lui avait pas causé de
souci nouveau; et comme, des visites prochaines qu’il lui ferait, il
savait qu’il ne pouvait tirer nulle bien grande joie mais plus
probablement quelque chagrin qui mettrait fin au calme où il se
trouvait, il lui écrivait qu’étant très occupé il ne pourrait la voir
aucun des jours qu’il lui avait dit. Or une lettre d’elle, se croisant
avec la sienne, le priait précisément de déplacer un rendez-vous. Il
se demandait pourquoi; ses soupçons, sa douleur le reprenaient. Il ne
pouvait plus tenir, dans l’état nouveau d’agitation où il se trouvait,
l’engagement qu’il avait pris dans l’état antérieur de calme relatif,
il courait chez elle et exigeait de la voir tous les jours suivants.
Et même si elle ne lui avait pas écrit la première, si elle répondait
seulement, cela suffisait pour qu’il ne pût plus rester sans la voir.
Car, contrairement au calcul de Swann, le consentement d’Odette avait
tout changé en lui. Comme tous ceux qui possèdent une chose, pour
savoir ce qui arriverait s’il cessait un moment de la posséder, il
avait ôté cette chose de son esprit, en y laissant tout le reste dans
le même état que quand elle était là. Or l’absence d’une chose, ce
n’est pas que cela, ce n’est pas un simple manque partiel, c’est un
bouleversement de tout le reste, c’est un état nouveau qu’on ne peut
prévoir dans l’ancien."
 :tokens 242
 :processed-at "2025-03-16T02:18:14.617204"
 :entities (list
  (entity :text "Parfois" :label "ORG" :start 0 :end 7) (entity :text "Car," :label "ORG" :start 897 :end 901) (entity :text "Swann," :label "ORG" :start 929 :end 935) (entity :text "Comme" :label "ORG" :start 987 :end 992)
 )
 :sentences (list
  (sentence :text "Parfois c’était après quelques jours où elle ne lui avait pas causé de
souci nouveau; et comme, des visites prochaines qu’il lui ferait, il
savait qu’il ne pouvait tirer nulle bien grande joie mais plus
probablement quelque chagrin qui mettrait fin au calme où il se
trouvait, il lui écrivait qu’étant très occupé il ne pourrait la voir
aucun des jours qu’il lui avait dit" :start 0 :end 372) (sentence :text "Or une lettre d’elle, se croisant
avec la sienne, le priait précisément de déplacer un rendez-vous" :start 373 :end 472) (sentence :text "Il
se demandait pourquoi; ses soupçons, sa douleur le reprenaient" :start 473 :end 539) (sentence :text "Il ne
pouvait plus tenir, dans l’état nouveau d’agitation où il se trouvait,
l’engagement qu’il avait pris dans l’état antérieur de calme relatif,
il courait chez elle et exigeait de la voir tous les jours suivants" :start 540 :end 755) (sentence :text "Et même si elle ne lui avait pas écrit la première, si elle répondait
seulement, cela suffisait pour qu’il ne pût plus rester sans la voir" :start 756 :end 895) (sentence :text "Car, contrairement au calcul de Swann, le consentement d’Odette avait
tout changé en lui" :start 896 :end 985) (sentence :text "Comme tous ceux qui possèdent une chose, pour
savoir ce qui arriverait s’il cessait un moment de la posséder, il
avait ôté cette chose de son esprit, en y laissant tout le reste dans
le même état que quand elle était là" :start 986 :end 1206) (sentence :text "Or l’absence d’une chose, ce
n’est pas que cela, ce n’est pas un simple manque partiel, c’est un
bouleversement de tout le reste, c’est un état nouveau qu’on ne peut
prévoir dans l’ancien" :start 1207 :end 1395)
 ))