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
 :text "Longtemps, je me suis couché de bonne heure. Parfois, à peine ma
bougie éteinte, mes yeux se fermaient si vite que je n’avais pas le
temps de me dire: «Je m’endors.» Et, une demi-heure après, la pensée
qu’il était temps de chercher le sommeil m’éveillait; je voulais poser
le volume que je croyais avoir encore dans les mains et souffler ma
lumière; je n’avais pas cessé en dormant de faire des réflexions sur
ce que je venais de lire, mais ces réflexions avaient pris un tour un
peu particulier; il me semblait que j’étais moi-même ce dont parlait
l’ouvrage: une église, un quatuor, la rivalité de François Ier et de
Charles Quint. Cette croyance survivait pendant quelques secondes à
mon réveil; elle ne choquait pas ma raison mais pesait comme des
écailles sur mes yeux et les empêchait de se rendre compte que le
bougeoir n’était plus allumé. Puis elle commençait à me devenir
inintelligible, comme après la métempsycose les pensées d’une
existence antérieure; le sujet du livre se détachait de moi, j’étais
libre de m’y appliquer ou non; aussitôt je recouvrais la vue et
j’étais bien étonné de trouver autour de moi une obscurité, douce et
reposante pour mes yeux, mais peut-être plus encore pour mon esprit, à
qui elle apparaissait comme une chose sans cause, incompréhensible,
comme une chose vraiment obscure. Je me demandais quelle heure il
pouvait être; j’entendais le sifflement des trains qui, plus ou moins
éloigné, comme le chant d’un oiseau dans une forêt, relevant les
distances, me décrivait l’étendue de la campagne déserte où le
voyageur se hâte vers la station prochaine; et le petit chemin qu’il
suit va être gravé dans son souvenir par l’excitation qu’il doit à des
lieux nouveaux, à des actes inaccoutumés, à la causerie récente et aux
adieux sous la lampe étrangère qui le suivent encore dans le silence
de la nuit, à la douceur prochaine du retour."
 :tokens 319
 :processed-at "2025-03-16T02:18:13.778655"
 :entities (list
  (entity :text "Longtemps," :label "ORG" :start 0 :end 10) (entity :text "Parfois," :label "ORG" :start 45 :end 53) (entity :text "François" :label "ORG" :start 599 :end 607) (entity :text "Charles" :label "ORG" :start 618 :end 625) (entity :text "Quint." :label "ORG" :start 626 :end 632) (entity :text "Cette" :label "ORG" :start 633 :end 638) (entity :text "Puis" :label "ORG" :start 847 :end 851)
 )
 :sentences (list
  (sentence :text "Longtemps, je me suis couché de bonne heure" :start 0 :end 43) (sentence :text "Parfois, à peine ma
bougie éteinte, mes yeux se fermaient si vite que je n’avais pas le
temps de me dire: «Je m’endors" :start 44 :end 163) (sentence :text "» Et, une demi-heure après, la pensée
qu’il était temps de chercher le sommeil m’éveillait; je voulais poser
le volume que je croyais avoir encore dans les mains et souffler ma
lumière; je n’avais pas cessé en dormant de faire des réflexions sur
ce que je venais de lire, mais ces réflexions avaient pris un tour un
peu particulier; il me semblait que j’étais moi-même ce dont parlait
l’ouvrage: une église, un quatuor, la rivalité de François Ier et de
Charles Quint" :start 164 :end 631) (sentence :text "Cette croyance survivait pendant quelques secondes à
mon réveil; elle ne choquait pas ma raison mais pesait comme des
écailles sur mes yeux et les empêchait de se rendre compte que le
bougeoir n’était plus allumé" :start 632 :end 845) (sentence :text "Puis elle commençait à me devenir
inintelligible, comme après la métempsycose les pensées d’une
existence antérieure; le sujet du livre se détachait de moi, j’étais
libre de m’y appliquer ou non; aussitôt je recouvrais la vue et
j’étais bien étonné de trouver autour de moi une obscurité, douce et
reposante pour mes yeux, mais peut-être plus encore pour mon esprit, à
qui elle apparaissait comme une chose sans cause, incompréhensible,
comme une chose vraiment obscure" :start 846 :end 1316) (sentence :text "Je me demandais quelle heure il
pouvait être; j’entendais le sifflement des trains qui, plus ou moins
éloigné, comme le chant d’un oiseau dans une forêt, relevant les
distances, me décrivait l’étendue de la campagne déserte où le
voyageur se hâte vers la station prochaine; et le petit chemin qu’il
suit va être gravé dans son souvenir par l’excitation qu’il doit à des
lieux nouveaux, à des actes inaccoutumés, à la causerie récente et aux
adieux sous la lampe étrangère qui le suivent encore dans le silence
de la nuit, à la douceur prochaine du retour" :start 1317 :end 1872)
 ))