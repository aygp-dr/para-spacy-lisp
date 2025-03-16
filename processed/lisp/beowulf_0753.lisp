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
 :text "--Je te jure, lui disait-il, quelques instants avant qu’elle partît
pour le théâtre, qu’en te demandant de ne pas sortir, tous mes
souhaits, si j’étais égoïste, seraient pour que tu me refuses, car
j’ai mille choses à faire ce soir et je me trouverai moi-même pris au
piège et bien ennuyé si contre toute attente tu me réponds que tu
n’iras pas. Mais mes occupations, mes plaisirs, ne sont pas tout, je
dois penser à toi. Il peut venir un jour où me voyant à jamais détaché
de toi tu auras le droit de me reprocher de ne pas t’avoir avertie
dans les minutes décisives où je sentais que j’allais porter sur toi
un de ces jugements sévères auxquels l’amour ne résiste pas longtemps.
Vois-tu, «Une nuit de Cléopâtre» (quel titre!) n’est rien dans la
circonstance. Ce qu’il faut savoir c’est si vraiment tu es cet être
qui est au dernier rang de l’esprit, et même du charme, l’être
méprisable qui n’est pas capable de renoncer à un plaisir. Alors, si
tu es cela, comment pourrait-on t’aimer, car tu n’es même pas une
personne, une créature définie, imparfaite, mais du moins perfectible?
Tu es une eau informe qui coule selon la pente qu’on lui offre, un
poisson sans mémoire et sans réflexion qui tant qu’il vivra dans son
aquarium se heurtera cent fois par jour contre le vitrage qu’il
continuera à prendre pour de l’eau. Comprends-tu que ta réponse, je ne
dis pas aura pour effet que je cesserai de t’aimer immédiatement, bien
entendu, mais te rendra moins séduisante à mes yeux quand je
comprendrai que tu n’es pas une personne, que tu es au-dessous de
toutes les choses et ne sais te placer au-dessus d’aucune? Évidemment
j’aurais mieux aimé te demander comme une chose sans importance, de
renoncer à «Une nuit de Cléopâtre» (puisque tu m’obliges à me souiller
les lèvres de ce nom abject) dans l’espoir que tu irais cependant.
Mais, décidé à tenir un tel compte, à tirer de telles conséquences de
ta réponse, j’ai trouvé plus loyal de t’en prévenir.»"
 :tokens 344
 :processed-at "2025-03-16T02:18:14.578166"
 :entities (list
  (entity :text "--Je" :label "ORG" :start 0 :end 4) (entity :text "Mais" :label "ORG" :start 346 :end 350) (entity :text "«Une" :label "ORG" :start 690 :end 694) (entity :text "Cléopâtre»" :label "ORG" :start 703 :end 713) (entity :text "Évidemment" :label "ORG" :start 1612 :end 1622) (entity :text "«Une" :label "ORG" :start 1702 :end 1706) (entity :text "Cléopâtre»" :label "ORG" :start 1715 :end 1725) (entity :text "Mais," :label "ORG" :start 1829 :end 1834)
 )
 :sentences (list
  (sentence :text "--Je te jure, lui disait-il, quelques instants avant qu’elle partît
pour le théâtre, qu’en te demandant de ne pas sortir, tous mes
souhaits, si j’étais égoïste, seraient pour que tu me refuses, car
j’ai mille choses à faire ce soir et je me trouverai moi-même pris au
piège et bien ennuyé si contre toute attente tu me réponds que tu
n’iras pas" :start 0 :end 344) (sentence :text "Mais mes occupations, mes plaisirs, ne sont pas tout, je
dois penser à toi" :start 345 :end 420) (sentence :text "Il peut venir un jour où me voyant à jamais détaché
de toi tu auras le droit de me reprocher de ne pas t’avoir avertie
dans les minutes décisives où je sentais que j’allais porter sur toi
un de ces jugements sévères auxquels l’amour ne résiste pas longtemps" :start 421 :end 679) (sentence :text "Vois-tu, «Une nuit de Cléopâtre» (quel titre!) n’est rien dans la
circonstance" :start 680 :end 759) (sentence :text "Ce qu’il faut savoir c’est si vraiment tu es cet être
qui est au dernier rang de l’esprit, et même du charme, l’être
méprisable qui n’est pas capable de renoncer à un plaisir" :start 760 :end 935) (sentence :text "Alors, si
tu es cela, comment pourrait-on t’aimer, car tu n’es même pas une
personne, une créature définie, imparfaite, mais du moins perfectible?
Tu es une eau informe qui coule selon la pente qu’on lui offre, un
poisson sans mémoire et sans réflexion qui tant qu’il vivra dans son
aquarium se heurtera cent fois par jour contre le vitrage qu’il
continuera à prendre pour de l’eau" :start 936 :end 1318) (sentence :text "Comprends-tu que ta réponse, je ne
dis pas aura pour effet que je cesserai de t’aimer immédiatement, bien
entendu, mais te rendra moins séduisante à mes yeux quand je
comprendrai que tu n’es pas une personne, que tu es au-dessous de
toutes les choses et ne sais te placer au-dessus d’aucune? Évidemment
j’aurais mieux aimé te demander comme une chose sans importance, de
renoncer à «Une nuit de Cléopâtre» (puisque tu m’obliges à me souiller
les lèvres de ce nom abject) dans l’espoir que tu irais cependant" :start 1319 :end 1827) (sentence :text "Mais, décidé à tenir un tel compte, à tirer de telles conséquences de
ta réponse, j’ai trouvé plus loyal de t’en prévenir" :start 1828 :end 1950) (sentence :text "»" :start 712 :end 713)
 ))