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
 :text "Swann n’avait donc pas tort de croire que la phrase de la sonate
existât réellement. Certes, humaine à ce point de vue, elle
appartenait pourtant à un ordre de créatures surnaturelles et que nous
n’avons jamais vues, mais que malgré cela nous reconnaissons avec
ravissement quand quelque explorateur de l’invisible arrive à en
capter une, à l’amener, du monde divin où il a accès, briller quelques
instants au-dessus du nôtre. C’est ce que Vinteuil avait fait pour la
petite phrase. Swann sentait que le compositeur s’était contenté, avec
ses instruments de musique, de la dévoiler, de la rendre visible, d’en
suivre et d’en respecter le dessin d’une main si tendre, si prudente,
si délicate et si sûre que le son s’altérait à tout moment,
s’estompant pour indiquer une ombre, revivifié quand il lui fallait
suivre à la piste un plus hardi contour. Et une preuve que Swann ne se
trompait pas quand il croyait à l’existence réelle de cette phrase,
c’est que tout amateur un peu fin se fût tout de suite aperçu de
l’imposture, si Vinteuil ayant eu moins de puissance pour en voir et
en rendre les formes, avait cherché à dissimuler, en ajoutant çà et là
des traits de son cru, les lacunes de sa vision ou les défaillances de
sa main."
 :tokens 215
 :processed-at "2025-03-16T02:18:14.751333"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 0 :end 5) (entity :text "Certes," :label "ORG" :start 85 :end 92) (entity :text "Vinteuil" :label "ORG" :start 440 :end 448) (entity :text "Swann" :label "ORG" :start 483 :end 488) (entity :text "Swann" :label "ORG" :start 867 :end 872) (entity :text "Vinteuil" :label "ORG" :start 1028 :end 1036)
 )
 :sentences (list
  (sentence :text "Swann n’avait donc pas tort de croire que la phrase de la sonate
existât réellement" :start 0 :end 83) (sentence :text "Certes, humaine à ce point de vue, elle
appartenait pourtant à un ordre de créatures surnaturelles et que nous
n’avons jamais vues, mais que malgré cela nous reconnaissons avec
ravissement quand quelque explorateur de l’invisible arrive à en
capter une, à l’amener, du monde divin où il a accès, briller quelques
instants au-dessus du nôtre" :start 84 :end 425) (sentence :text "C’est ce que Vinteuil avait fait pour la
petite phrase" :start 426 :end 481) (sentence :text "Swann sentait que le compositeur s’était contenté, avec
ses instruments de musique, de la dévoiler, de la rendre visible, d’en
suivre et d’en respecter le dessin d’une main si tendre, si prudente,
si délicate et si sûre que le son s’altérait à tout moment,
s’estompant pour indiquer une ombre, revivifié quand il lui fallait
suivre à la piste un plus hardi contour" :start 482 :end 847) (sentence :text "Et une preuve que Swann ne se
trompait pas quand il croyait à l’existence réelle de cette phrase,
c’est que tout amateur un peu fin se fût tout de suite aperçu de
l’imposture, si Vinteuil ayant eu moins de puissance pour en voir et
en rendre les formes, avait cherché à dissimuler, en ajoutant çà et là
des traits de son cru, les lacunes de sa vision ou les défaillances de
sa main" :start 848 :end 1230)
 ))