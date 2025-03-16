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
 :text "Il voyait le pianiste prêt à jouer la sonate Clair de lune et les
mines de Mme Verdurin s’effrayant du mal que la musique de Beethoven
allait faire à ses nerfs: «Idiote, menteuse! s’écria-t-il, et ça croit
aimer l’Art!». Elle dirait à Odette, après lui avoir insinué
adroitement quelques mots louangeurs pour Forcheville, comme elle
avait fait si souvent pour lui: «Vous allez faire une petite place à
côté de vous à M. de Forcheville.» «Dans l’obscurité! maquerelle,
entremetteuse!». «Entremetteuse», c’était le nom qu’il donnait aussi à
la musique qui les convierait à se taire, à rêver ensemble, à se
regarder, à se prendre la main. Il trouvait du bon à la sévérité
contre les arts, de Platon, de Bossuet, et de la vieille éducation
française."
 :tokens 126
 :processed-at "2025-03-16T02:18:14.570423"
 :entities (list
  (entity :text "Clair" :label "ORG" :start 45 :end 50) (entity :text "Verdurin" :label "ORG" :start 79 :end 87) (entity :text "Beethoven" :label "ORG" :start 125 :end 134) (entity :text "«Idiote," :label "ORG" :start 161 :end 169) (entity :text "Elle" :label "ORG" :start 221 :end 225) (entity :text "Odette," :label "ORG" :start 235 :end 242) (entity :text "Forcheville," :label "ORG" :start 309 :end 321) (entity :text "«Vous" :label "ORG" :start 365 :end 370) (entity :text "Forcheville.»" :label "ORG" :start 423 :end 436) (entity :text "«Dans" :label "ORG" :start 437 :end 442) (entity :text "«Entremetteuse»," :label "ORG" :start 485 :end 501) (entity :text "Platon," :label "ORG" :start 689 :end 696) (entity :text "Bossuet," :label "ORG" :start 700 :end 708)
 )
 :sentences (list
  (sentence :text "Il voyait le pianiste prêt à jouer la sonate Clair de lune et les
mines de Mme Verdurin s’effrayant du mal que la musique de Beethoven
allait faire à ses nerfs: «Idiote, menteuse! s’écria-t-il, et ça croit
aimer l’Art!»" :start 0 :end 219) (sentence :text "Elle dirait à Odette, après lui avoir insinué
adroitement quelques mots louangeurs pour Forcheville, comme elle
avait fait si souvent pour lui: «Vous allez faire une petite place à
côté de vous à M" :start 220 :end 418) (sentence :text "de Forcheville" :start 419 :end 434) (sentence :text "» «Dans l’obscurité! maquerelle,
entremetteuse!»" :start 435 :end 483) (sentence :text "«Entremetteuse», c’était le nom qu’il donnait aussi à
la musique qui les convierait à se taire, à rêver ensemble, à se
regarder, à se prendre la main" :start 484 :end 634) (sentence :text "Il trouvait du bon à la sévérité
contre les arts, de Platon, de Bossuet, et de la vieille éducation
française" :start 635 :end 745)
 ))