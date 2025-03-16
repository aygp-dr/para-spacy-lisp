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
 :text "Ma mère ne vint pas, et sans ménagements pour mon amour-propre (engagé
à ce que la fable de la recherche dont elle était censée m’avoir prié
de lui dire le résultat ne fût pas démentie) me fit dire par Françoise
ces mots: «Il n’y a pas de réponse» que depuis j’ai si souvent entendu
des concierges de «palaces» ou des valets de pied de tripots,
rapporter à quelque pauvre fille qui s’étonne: «Comment, il n’a rien
dit, mais c’est impossible! Vous avez pourtant bien remis ma lettre.
C’est bien, je vais attendre encore.» Et--de même qu’elle assure
invariablement n’avoir pas besoin du bec supplémentaire que le
concierge veut allumer pour elle, et reste là, n’entendant plus que
les rares propos sur le temps qu’il fait échangés entre le concierge
et un chasseur qu’il envoie tout d’un coup en s’apercevant de l’heure,
faire rafraîchir dans la glace la boisson d’un client,--ayant décliné
l’offre de Françoise de me faire de la tisane ou de rester auprès de
moi, je la laissai retourner à l’office, je me couchai et je fermai
les yeux en tâchant de ne pas entendre la voix de mes parents qui
prenaient le café au jardin. Mais au bout de quelques secondes, je
sentis qu’en écrivant ce mot à maman, en m’approchant, au risque de la
fâcher, si près d’elle que j’avais cru toucher le moment de la revoir,
je m’étais barré la possibilité de m’endormir sans l’avoir revue, et
les battements de mon cœur, de minute en minute devenaient plus
douloureux parce que j’augmentais mon agitation en me prêchant un
calme qui était l’acceptation de mon infortune. Tout à coup mon
anxiété tomba, une félicité m’envahit comme quand un médicament
puissant commence à agir et nous enlève une douleur: je venais de
prendre la résolution de ne plus essayer de m’endormir sans avoir revu
maman, de l’embrasser coûte que coûte, bien que ce fût avec la
certitude d’être ensuite fâché pour longtemps avec elle, quand elle
remonterait se coucher. Le calme qui résultait de mes angoisses finies
me mettait dans un allégresse extraordinaire, non moins que l’attente,
la soif et la peur du danger. J’ouvris la fenêtre sans bruit et
m’assis au pied de mon lit; je ne faisais presque aucun mouvement afin
qu’on ne m’entendît pas d’en bas. Dehors, les choses semblaient, elles
aussi, figées en une muette attention à ne pas troubler le clair de
lune, qui doublant et reculant chaque chose par l’extension devant
elle de son reflet, plus dense et concret qu’elle-même, avait à la
fois aminci et agrandi le paysage comme un plan replié jusque-là,
qu’on développe. Ce qui avait besoin de bouger, quelque feuillage de
marronnier, bougeait. Mais son frissonnement minutieux, total, exécuté
jusque dans ses moindres nuances et ses dernières délicatesses, ne
bavait pas sur le reste, ne se fondait pas avec lui, restait
circonscrit. Exposés sur ce silence qui n’en absorbait rien, les
bruits les plus éloignés, ceux qui devaient venir de jardins situés à
l’autre bout de la ville, se percevaient détaillés avec un tel «fini»
qu’ils semblaient ne devoir cet effet de lointain qu’à leur
pianissimo, comme ces motifs en sourdine si bien exécutés par
l’orchestre du Conservatoire que quoiqu’on n’en perde pas une note on
croit les entendre cependant loin de la salle du concert et que tous
les vieux abonnés,--les sœurs de ma grand’mère aussi quand Swann leur
avait donné ses places,--tendaient l’oreille comme s’ils avaient écouté
les progrès lointains d’une armée en marche qui n’aurait pas encore
tourné la rue de Trévise."
 :tokens 587
 :processed-at "2025-03-16T02:18:13.820397"
 :entities (list
  (entity :text "Françoise" :label "ORG" :start 202 :end 211) (entity :text "«Comment," :label "ORG" :start 392 :end 401) (entity :text "Vous" :label "ORG" :start 442 :end 446) (entity :text "Françoise" :label "ORG" :start 900 :end 909) (entity :text "Mais" :label "ORG" :start 1121 :end 1125) (entity :text "Tout" :label "ORG" :start 1548 :end 1552) (entity :text "Dehors," :label "ORG" :start 2207 :end 2214) (entity :text "Mais" :label "ORG" :start 2603 :end 2607) (entity :text "Exposés" :label "ORG" :start 2793 :end 2800) (entity :text "Conservatoire" :label "ORG" :start 3122 :end 3135) (entity :text "Swann" :label "ORG" :start 3305 :end 3310) (entity :text "Trévise." :label "ORG" :start 3473 :end 3481)
 )
 :sentences (list
  (sentence :text "Ma mère ne vint pas, et sans ménagements pour mon amour-propre (engagé
à ce que la fable de la recherche dont elle était censée m’avoir prié
de lui dire le résultat ne fût pas démentie) me fit dire par Françoise
ces mots: «Il n’y a pas de réponse» que depuis j’ai si souvent entendu
des concierges de «palaces» ou des valets de pied de tripots,
rapporter à quelque pauvre fille qui s’étonne: «Comment, il n’a rien
dit, mais c’est impossible! Vous avez pourtant bien remis ma lettre" :start 0 :end 481) (sentence :text "C’est bien, je vais attendre encore" :start 482 :end 518) (sentence :text "» Et--de même qu’elle assure
invariablement n’avoir pas besoin du bec supplémentaire que le
concierge veut allumer pour elle, et reste là, n’entendant plus que
les rares propos sur le temps qu’il fait échangés entre le concierge
et un chasseur qu’il envoie tout d’un coup en s’apercevant de l’heure,
faire rafraîchir dans la glace la boisson d’un client,--ayant décliné
l’offre de Françoise de me faire de la tisane ou de rester auprès de
moi, je la laissai retourner à l’office, je me couchai et je fermai
les yeux en tâchant de ne pas entendre la voix de mes parents qui
prenaient le café au jardin" :start 519 :end 1119) (sentence :text "Mais au bout de quelques secondes, je
sentis qu’en écrivant ce mot à maman, en m’approchant, au risque de la
fâcher, si près d’elle que j’avais cru toucher le moment de la revoir,
je m’étais barré la possibilité de m’endormir sans l’avoir revue, et
les battements de mon cœur, de minute en minute devenaient plus
douloureux parce que j’augmentais mon agitation en me prêchant un
calme qui était l’acceptation de mon infortune" :start 1120 :end 1546) (sentence :text "Tout à coup mon
anxiété tomba, une félicité m’envahit comme quand un médicament
puissant commence à agir et nous enlève une douleur: je venais de
prendre la résolution de ne plus essayer de m’endormir sans avoir revu
maman, de l’embrasser coûte que coûte, bien que ce fût avec la
certitude d’être ensuite fâché pour longtemps avec elle, quand elle
remonterait se coucher" :start 1547 :end 1918) (sentence :text "Le calme qui résultait de mes angoisses finies
me mettait dans un allégresse extraordinaire, non moins que l’attente,
la soif et la peur du danger" :start 1919 :end 2066) (sentence :text "J’ouvris la fenêtre sans bruit et
m’assis au pied de mon lit; je ne faisais presque aucun mouvement afin
qu’on ne m’entendît pas d’en bas" :start 2067 :end 2205) (sentence :text "Dehors, les choses semblaient, elles
aussi, figées en une muette attention à ne pas troubler le clair de
lune, qui doublant et reculant chaque chose par l’extension devant
elle de son reflet, plus dense et concret qu’elle-même, avait à la
fois aminci et agrandi le paysage comme un plan replié jusque-là,
qu’on développe" :start 2206 :end 2527) (sentence :text "Ce qui avait besoin de bouger, quelque feuillage de
marronnier, bougeait" :start 2528 :end 2601) (sentence :text "Mais son frissonnement minutieux, total, exécuté
jusque dans ses moindres nuances et ses dernières délicatesses, ne
bavait pas sur le reste, ne se fondait pas avec lui, restait
circonscrit" :start 2602 :end 2791) (sentence :text "Exposés sur ce silence qui n’en absorbait rien, les
bruits les plus éloignés, ceux qui devaient venir de jardins situés à
l’autre bout de la ville, se percevaient détaillés avec un tel «fini»
qu’ils semblaient ne devoir cet effet de lointain qu’à leur
pianissimo, comme ces motifs en sourdine si bien exécutés par
l’orchestre du Conservatoire que quoiqu’on n’en perde pas une note on
croit les entendre cependant loin de la salle du concert et que tous
les vieux abonnés,--les sœurs de ma grand’mère aussi quand Swann leur
avait donné ses places,--tendaient l’oreille comme s’ils avaient écouté
les progrès lointains d’une armée en marche qui n’aurait pas encore
tourné la rue de Trévise" :start 2792 :end 3480)
 ))