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
 :text "Et jusque dans ces jours où toute autre végétation a disparu, où le
beau cuir vert qui enveloppe le tronc des vieux arbres est caché sous
la neige, quand celle-ci cessait de tomber, mais que le temps restait
trop couvert pour espérer que Gilberte sortît, alors tout d’un coup,
faisant dire à ma mère: «Tiens voilà justement qu’il fait beau, vous
pourriez peut-être essayer tout de même d’aller aux Champs-Élysées»,
sur le manteau de neige qui couvrait le balcon, le soleil apparu
entrelaçait des fils d’or et brodait des reflets noirs. Ce jour-là
nous ne trouvions personne ou une seule fillette prête à partir qui
m’assurait que Gilberte ne viendrait pas. Les chaises désertées par
l’assemblée imposante mais frileuse des institutrices étaient vides.
Seule, près de la pelouse, était assise une dame d’un certain âge qui
venait par tous les temps, toujours hanachée d’une toilette
identique, magnifique et sombre, et pour faire la connaissance de
laquelle j’aurais à cette époque sacrifié, si l’échange m’avait été
permis, tous les plus grands avantages futurs de ma vie. Car Gilberte
allait tous les jours la saluer; elle demandait à Gilberte des
nouvelles de «son amour de mère»; et il me semblait que si je l’avais
connue, j’avais été pour Gilberte quelqu’un de tout autre, quelqu’un
qui connaissait les relations de ses parents. Pendant que ses
petits-enfants jouaient plus loin, elle lisait toujours les Débats
qu’elle appelait «mes vieux Débats» et, par genre aristocratique,
disait en parlant du sergent de ville ou de la loueuse de chaises:
«Mon vieil ami le sergent de ville», «la loueuse de chaises et moi qui
sommes de vieux amis»."
 :tokens 271
 :processed-at "2025-03-16T02:18:14.844374"
 :entities (list
  (entity :text "Gilberte" :label "ORG" :start 238 :end 246) (entity :text "«Tiens" :label "ORG" :start 301 :end 307) (entity :text "Champs-Élysées»," :label "ORG" :start 398 :end 414) (entity :text "Gilberte" :label "ORG" :start 630 :end 638) (entity :text "Seule," :label "ORG" :start 752 :end 758) (entity :text "Gilberte" :label "ORG" :start 1077 :end 1085) (entity :text "Gilberte" :label "ORG" :start 1136 :end 1144) (entity :text "Gilberte" :label "ORG" :start 1244 :end 1252) (entity :text "Pendant" :label "ORG" :start 1334 :end 1341) (entity :text "Débats" :label "ORG" :start 1410 :end 1416) (entity :text "Débats»" :label "ORG" :start 1445 :end 1452) (entity :text "«Mon" :label "ORG" :start 1550 :end 1554)
 )
 :sentences (list
  (sentence :text "Et jusque dans ces jours où toute autre végétation a disparu, où le
beau cuir vert qui enveloppe le tronc des vieux arbres est caché sous
la neige, quand celle-ci cessait de tomber, mais que le temps restait
trop couvert pour espérer que Gilberte sortît, alors tout d’un coup,
faisant dire à ma mère: «Tiens voilà justement qu’il fait beau, vous
pourriez peut-être essayer tout de même d’aller aux Champs-Élysées»,
sur le manteau de neige qui couvrait le balcon, le soleil apparu
entrelaçait des fils d’or et brodait des reflets noirs" :start 0 :end 534) (sentence :text "Ce jour-là
nous ne trouvions personne ou une seule fillette prête à partir qui
m’assurait que Gilberte ne viendrait pas" :start 535 :end 655) (sentence :text "Les chaises désertées par
l’assemblée imposante mais frileuse des institutrices étaient vides" :start 656 :end 750) (sentence :text "Seule, près de la pelouse, était assise une dame d’un certain âge qui
venait par tous les temps, toujours hanachée d’une toilette
identique, magnifique et sombre, et pour faire la connaissance de
laquelle j’aurais à cette époque sacrifié, si l’échange m’avait été
permis, tous les plus grands avantages futurs de ma vie" :start 751 :end 1071) (sentence :text "Car Gilberte
allait tous les jours la saluer; elle demandait à Gilberte des
nouvelles de «son amour de mère»; et il me semblait que si je l’avais
connue, j’avais été pour Gilberte quelqu’un de tout autre, quelqu’un
qui connaissait les relations de ses parents" :start 1072 :end 1332) (sentence :text "Pendant que ses
petits-enfants jouaient plus loin, elle lisait toujours les Débats
qu’elle appelait «mes vieux Débats» et, par genre aristocratique,
disait en parlant du sergent de ville ou de la loueuse de chaises:
«Mon vieil ami le sergent de ville», «la loueuse de chaises et moi qui
sommes de vieux amis»" :start 1333 :end 1642)
 ))