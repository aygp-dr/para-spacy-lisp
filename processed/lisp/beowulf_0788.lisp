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
 :text "Elle y revenait sans plus trouver de résistance, et d’ailleurs si
irrésistible que Swann avait eu bien moins de peine à sentir
s’approcher un à un les quinze jours qu’il devait rester séparé
d’Odette, qu’il n’en avait à attendre les dix minutes que son cocher
mettait pour atteler la voiture qui allait l’emmener chez elle et
qu’il passait dans des transports d’impatience et de joie où il
ressaisissait mille fois pour lui prodiguer sa tendresse cette idée de
la retrouver qui, par un retour si brusque, au moment où il la croyait
si loin, était de nouveau près de lui dans sa plus proche conscience.
C’est qu’elle ne trouvait plus pour lui faire obstacle le désir de
chercher sans plus tarder à lui résister qui n’existait plus chez
Swann depuis que s’étant prouvé à lui-même,--il le croyait du
moins,--qu’il en était si aisément capable, il ne voyait plus aucun
inconvénient à ajourner un essai de séparation qu’il était certain
maintenant de mettre à exécution dès qu’il le voudrait. C’est aussi
que cette idée de la revoir revenait parée pour lui d’une nouveauté,
d’une séduction, douée d’une virulence que l’habitude avait émoussées,
mais qui s’étaient retrempées dans cette privation non de trois jours
mais de quinze (car la durée d’un renoncement doit se calculer, par
anticipation, sur le terme assigné), et de ce qui jusque-là eût été un
plaisir attendu qu’on sacrifie aisément, avait fait un bonheur
inespéré contre lequel on est sans force. C’est enfin qu’elle y
revenait embellie par l’ignorance où était Swann de ce qu’Odette avait
pu penser, faire peut-être en voyant qu’il ne lui avait pas donné
signe de vie, si bien que ce qu’il allait trouver c’était la
révélation passionnante d’une Odette presque inconnue."
 :tokens 288
 :processed-at "2025-03-16T02:18:14.619642"
 :entities (list
  (entity :text "Elle" :label "ORG" :start 0 :end 4) (entity :text "Swann" :label "ORG" :start 83 :end 88) (entity :text "Swann" :label "ORG" :start 735 :end 740) (entity :text "Swann" :label "ORG" :start 1519 :end 1524) (entity :text "Odette" :label "ORG" :start 1534 :end 1540)
 )
 :sentences (list
  (sentence :text "Elle y revenait sans plus trouver de résistance, et d’ailleurs si
irrésistible que Swann avait eu bien moins de peine à sentir
s’approcher un à un les quinze jours qu’il devait rester séparé
d’Odette, qu’il n’en avait à attendre les dix minutes que son cocher
mettait pour atteler la voiture qui allait l’emmener chez elle et
qu’il passait dans des transports d’impatience et de joie où il
ressaisissait mille fois pour lui prodiguer sa tendresse cette idée de
la retrouver qui, par un retour si brusque, au moment où il la croyait
si loin, était de nouveau près de lui dans sa plus proche conscience" :start 0 :end 600) (sentence :text "C’est qu’elle ne trouvait plus pour lui faire obstacle le désir de
chercher sans plus tarder à lui résister qui n’existait plus chez
Swann depuis que s’étant prouvé à lui-même,--il le croyait du
moins,--qu’il en était si aisément capable, il ne voyait plus aucun
inconvénient à ajourner un essai de séparation qu’il était certain
maintenant de mettre à exécution dès qu’il le voudrait" :start 601 :end 986) (sentence :text "C’est aussi
que cette idée de la revoir revenait parée pour lui d’une nouveauté,
d’une séduction, douée d’une virulence que l’habitude avait émoussées,
mais qui s’étaient retrempées dans cette privation non de trois jours
mais de quinze (car la durée d’un renoncement doit se calculer, par
anticipation, sur le terme assigné), et de ce qui jusque-là eût été un
plaisir attendu qu’on sacrifie aisément, avait fait un bonheur
inespéré contre lequel on est sans force" :start 987 :end 1452) (sentence :text "C’est enfin qu’elle y
revenait embellie par l’ignorance où était Swann de ce qu’Odette avait
pu penser, faire peut-être en voyant qu’il ne lui avait pas donné
signe de vie, si bien que ce qu’il allait trouver c’était la
révélation passionnante d’une Odette presque inconnue" :start 1453 :end 1727)
 ))