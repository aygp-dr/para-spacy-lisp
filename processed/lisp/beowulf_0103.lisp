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
 :text "Deux tapisseries de haute lice représentaient le couronnement d’Esther
(le tradition voulait qu’on eût donné à Assuérus les traits d’un roi
de France et à Esther ceux d’une dame de Guermantes dont il était
amoureux) auxquelles leurs couleurs, en fondant, avaient ajouté une
expression, un relief, un éclairage: un peu de rose flottait aux
lèvres d’Esther au delà du dessin de leur contour, le jaune de sa robe
s’étalait si onctueusement, si grassement, qu’elle en prenait une
sorte de consistance et s’enlevait vivement sur l’atmosphère refoulée;
et la verdure des arbres restée vive dans les parties basses du
panneau de soie et de laine, mais ayant «passé» dans le haut, faisait
se détacher en plus pâle, au-dessus des troncs foncés, les hautes
branches jaunissantes, dorées et comme à demi effacées par la brusque
et oblique illumination d’un soleil invisible. Tout cela et plus
encore les objets précieux venus à l’église de personnages qui étaient
pour moi presque des personnages de légende (la croix d’or travaillée
disait-on par saint Éloi et donnée par Dagobert, le tombeau des fils
de Louis le Germanique, en porphyre et en cuivre émaillé) à cause de
quoi je m’avançais dans l’église, quand nous gagnions nos chaises,
comme dans une vallée visitée des fées, où le paysan s’émerveille de
voir dans un rocher, dans un arbre, dans une mare, la trace palpable
de leur passage surnaturel, tout cela faisait d’elle pour moi quelque
chose d’entièrement différent du reste de la ville: un édifice
occupant, si l’on peut dire, un espace à quatre dimensions--la
quatrième étant celle du Temps,--déployant à travers les siècles son
vaisseau qui, de travée en travée, de chapelle en chapelle, semblait
vaincre et franchir non pas seulement quelques mètres, mais des
époques successives d’où il sortait victorieux; dérobant le rude et
farouche XIe siècle dans l’épaisseur de ses murs, d’où il
n’apparaissait avec ses lourds cintres bouchés et aveuglés de
grossiers moellons que par la profonde entaille que creusait près du
porche l’escalier du clocher, et, même là, dissimulé par les
gracieuses arcades gothiques qui se pressaient coquettement devant lui
comme de plus grandes sœurs, pour le cacher aux étrangers, se placent
en souriant devant un jeune frère rustre, grognon et mal vêtu; élevant
dans le ciel au-dessus de la Place, sa tour qui avait contemplé saint
Louis et semblait le voir encore; et s’enfonçant avec sa crypte dans
une nuit mérovingienne où, nous guidant à tâtons sous la voûte obscure
et puissamment nervurée comme la membrane d’une immense chauve-souris
de pierre, Théodore et sa sœur nous éclairaient d’une bougie le
tombeau de la petite fille de Sigebert, sur lequel une profonde
valve,--comme la trace d’un fossile,--avait été creusée, disait-on, «par
une lampe de cristal qui, le soir du meurtre de la princesse franque,
s’était détachée d’elle-même des chaînes d’or où elle était suspendue
à la place de l’actuelle abside, et, sans que le cristal se brisât,
sans que la flamme s’éteignît, s’était enfoncée dans la pierre et
l’avait fait mollement céder sous elle.»"
 :tokens 500
 :processed-at "2025-03-16T02:18:13.894988"
 :entities (list
  (entity :text "Deux" :label "ORG" :start 0 :end 4) (entity :text "France" :label "ORG" :start 143 :end 149) (entity :text "Esther" :label "ORG" :start 155 :end 161) (entity :text "Guermantes" :label "ORG" :start 181 :end 191) (entity :text "Tout" :label "ORG" :start 864 :end 868) (entity :text "Éloi" :label "ORG" :start 1043 :end 1047) (entity :text "Dagobert," :label "ORG" :start 1062 :end 1071) (entity :text "Louis" :label "ORG" :start 1095 :end 1100) (entity :text "Germanique," :label "ORG" :start 1104 :end 1115) (entity :text "Place," :label "ORG" :start 2323 :end 2329) (entity :text "Louis" :label "ORG" :start 2364 :end 2369) (entity :text "Théodore" :label "ORG" :start 2585 :end 2593) (entity :text "Sigebert," :label "ORG" :start 2668 :end 2677)
 )
 :sentences (list
  (sentence :text "Deux tapisseries de haute lice représentaient le couronnement d’Esther
(le tradition voulait qu’on eût donné à Assuérus les traits d’un roi
de France et à Esther ceux d’une dame de Guermantes dont il était
amoureux) auxquelles leurs couleurs, en fondant, avaient ajouté une
expression, un relief, un éclairage: un peu de rose flottait aux
lèvres d’Esther au delà du dessin de leur contour, le jaune de sa robe
s’étalait si onctueusement, si grassement, qu’elle en prenait une
sorte de consistance et s’enlevait vivement sur l’atmosphère refoulée;
et la verdure des arbres restée vive dans les parties basses du
panneau de soie et de laine, mais ayant «passé» dans le haut, faisait
se détacher en plus pâle, au-dessus des troncs foncés, les hautes
branches jaunissantes, dorées et comme à demi effacées par la brusque
et oblique illumination d’un soleil invisible" :start 0 :end 862) (sentence :text "Tout cela et plus
encore les objets précieux venus à l’église de personnages qui étaient
pour moi presque des personnages de légende (la croix d’or travaillée
disait-on par saint Éloi et donnée par Dagobert, le tombeau des fils
de Louis le Germanique, en porphyre et en cuivre émaillé) à cause de
quoi je m’avançais dans l’église, quand nous gagnions nos chaises,
comme dans une vallée visitée des fées, où le paysan s’émerveille de
voir dans un rocher, dans un arbre, dans une mare, la trace palpable
de leur passage surnaturel, tout cela faisait d’elle pour moi quelque
chose d’entièrement différent du reste de la ville: un édifice
occupant, si l’on peut dire, un espace à quatre dimensions--la
quatrième étant celle du Temps,--déployant à travers les siècles son
vaisseau qui, de travée en travée, de chapelle en chapelle, semblait
vaincre et franchir non pas seulement quelques mètres, mais des
époques successives d’où il sortait victorieux; dérobant le rude et
farouche XIe siècle dans l’épaisseur de ses murs, d’où il
n’apparaissait avec ses lourds cintres bouchés et aveuglés de
grossiers moellons que par la profonde entaille que creusait près du
porche l’escalier du clocher, et, même là, dissimulé par les
gracieuses arcades gothiques qui se pressaient coquettement devant lui
comme de plus grandes sœurs, pour le cacher aux étrangers, se placent
en souriant devant un jeune frère rustre, grognon et mal vêtu; élevant
dans le ciel au-dessus de la Place, sa tour qui avait contemplé saint
Louis et semblait le voir encore; et s’enfonçant avec sa crypte dans
une nuit mérovingienne où, nous guidant à tâtons sous la voûte obscure
et puissamment nervurée comme la membrane d’une immense chauve-souris
de pierre, Théodore et sa sœur nous éclairaient d’une bougie le
tombeau de la petite fille de Sigebert, sur lequel une profonde
valve,--comme la trace d’un fossile,--avait été creusée, disait-on, «par
une lampe de cristal qui, le soir du meurtre de la princesse franque,
s’était détachée d’elle-même des chaînes d’or où elle était suspendue
à la place de l’actuelle abside, et, sans que le cristal se brisât,
sans que la flamme s’éteignît, s’était enfoncée dans la pierre et
l’avait fait mollement céder sous elle" :start 863 :end 3087) (sentence :text "»" :start 657 :end 658)
 ))