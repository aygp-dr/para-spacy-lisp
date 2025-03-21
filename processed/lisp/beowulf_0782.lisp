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
 :text "Et,--au lieu qu’elle allait partir brouillée avec lui, sans l’avoir
revu--, s’il lui envoyait cet argent, s’il l’encourageait à ce voyage
et s’occupait de le lui rendre agréable, elle allait accourir,
heureuse, reconnaissante, et il aurait cette joie de la voir qu’il
n’avait pas goûtée depuis près d’une semaine et que rien ne pouvait
lui remplacer. Car sitôt que Swann pouvait se la représenter sans
horreur, qu’il revoyait de la bonté dans son sourire, et que le désir
de l’enlever à tout autre, n’était plus ajouté par la jalousie à son
amour, cet amour redevenait surtout un goût pour les sensations que
lui donnait la personne d’Odette, pour le plaisir qu’il avait à
admirer comme un spectacle ou à interroger comme un phénomène, le
lever d’un de ses regards, la formation d’un de ses sourires,
l’émission d’une intonation de sa voix. Et ce plaisir différent de
tous les autres, avait fini par créer en lui un besoin d’elle et
qu’elle seule pouvait assouvir par sa présence ou ses lettres, presque
aussi désintéressé, presque aussi artistique, aussi pervers, qu’un
autre besoin qui caractérisait cette période nouvelle de la vie de
Swann où à la sécheresse, à la dépression des années antérieures avait
succédé une sorte de trop-plein spirituel, sans qu’il sût davantage à
quoi il devait cet enrichissement inespéré de sa vie intérieure qu’une
personne de santé délicate qui à partir d’un certain moment se
fortifie, engraisse, et semble pendant quelque temps s’acheminer vers
une complète guérison--cet autre besoin qui se développait aussi en
dehors du monde réel, c’était celui d’entendre, de connaître de la
musique."
 :tokens 265
 :processed-at "2025-03-16T02:18:14.613011"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 365 :end 370) (entity :text "Swann" :label "ORG" :start 1138 :end 1143)
 )
 :sentences (list
  (sentence :text "Et,--au lieu qu’elle allait partir brouillée avec lui, sans l’avoir
revu--, s’il lui envoyait cet argent, s’il l’encourageait à ce voyage
et s’occupait de le lui rendre agréable, elle allait accourir,
heureuse, reconnaissante, et il aurait cette joie de la voir qu’il
n’avait pas goûtée depuis près d’une semaine et que rien ne pouvait
lui remplacer" :start 0 :end 349) (sentence :text "Car sitôt que Swann pouvait se la représenter sans
horreur, qu’il revoyait de la bonté dans son sourire, et que le désir
de l’enlever à tout autre, n’était plus ajouté par la jalousie à son
amour, cet amour redevenait surtout un goût pour les sensations que
lui donnait la personne d’Odette, pour le plaisir qu’il avait à
admirer comme un spectacle ou à interroger comme un phénomène, le
lever d’un de ses regards, la formation d’un de ses sourires,
l’émission d’une intonation de sa voix" :start 350 :end 839) (sentence :text "Et ce plaisir différent de
tous les autres, avait fini par créer en lui un besoin d’elle et
qu’elle seule pouvait assouvir par sa présence ou ses lettres, presque
aussi désintéressé, presque aussi artistique, aussi pervers, qu’un
autre besoin qui caractérisait cette période nouvelle de la vie de
Swann où à la sécheresse, à la dépression des années antérieures avait
succédé une sorte de trop-plein spirituel, sans qu’il sût davantage à
quoi il devait cet enrichissement inespéré de sa vie intérieure qu’une
personne de santé délicate qui à partir d’un certain moment se
fortifie, engraisse, et semble pendant quelque temps s’acheminer vers
une complète guérison--cet autre besoin qui se développait aussi en
dehors du monde réel, c’était celui d’entendre, de connaître de la
musique" :start 840 :end 1625)
 ))