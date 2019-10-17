<h2>1. Introduction</h2>

<p> ce repo appartient à Leo Vanel et Anthony Phimphachanh, voici les consignes <p>

<p>Rien de tel que de coder un jeu pour solidifier ses bases en POO ! Nous allons donc créer un <a href="https://fr.wikipedia.org/wiki/Tic-tac-toe?oldformat=true" target="_blank">jeu de morpion</a>, jeu hautement stratégique et follement passionnant s'il en est. </p>

<p>Pour ceux qui ne sont pas passé par la case morpion dans leur enfance (ou leur adolescence pour les moins hygiéniques), on vous précise 8 comportements attendus de la part du programme (par ordre d'importance) :</p>
<ol>
        <li>Le jeu ne se joue qu'à deux joueurs humains (on ne vous demande pas de coder d'intelligence artificielle aujourd'hui…);</li>
        <li>Le programme doit commencer en demandant le prénom de chaque joueur ;</li>
        <li>Le plateau de jeu est composé de 9 cases, chacune désignée par sa position verticale (A, B ou C) suivie de sa position horizontale (1, 2 ou 3). Exemples : la case en haut à droite s'appelle "A3" et celle en bas à droite "C3" ;</li>
        <li>Au début de chaque tour de jeu, le programme affiche dans le terminal le plateau de jeu. Puis il demande au joueur dont c'est le tour où il souhaite jouer ;</li>
        <li>Les joueurs jouent à tour de rôle jusqu'à que l'un d'eux gagne ou que le plateau de jeu soit rempli ;</li>
        <li>Le programme doit détecter la fin de la partie. Si un joueur gagne, le jeu annonce son nom. S'il y a match nul, le programme doit en informer les deux joueurs ;</li>
        <li>À la fin d'une partie, le programme doit proposer de lancer une nouvelle partie ;</li>
        <li>Un effort sera à faire sur l'affichage du jeu dans le terminal (par ex : board affiché de façon stylée, compteur de parties, couleurs, etc.).</li>
</ol>

<h2>2. Le projet</h2>

<p>On va pas te mentir : c'est un gros morceau auquel tu vas t'attaquer aujourd'hui. Il y aura BEAUCOUP de méthodes à écrire et elles seront réparties en plein de classes. Mais comme d'habitude dans The Hacking Project, ce qui va te permettre de t'en sortir, c'est avant tout <b>la collaboration</b>. Tu vas donc réaliser ce projet en pair programming et surtout ne pas hésiter à demander de l'aide à la communauté quand tu sens que tu bloques plus de 20-30 minutes sur un point.</p>

<p>⚠ <b>Fonctionnalités à implémenter</b> ⚠ : la liste est longue et rares seront les groupes qui arriveront à proposer un Morpion avec l'ensemble des fonctionnalités. Si jamais une fonctionnalité te semble trop difficile à implémenter, fais l'impasse et tente d'en implémenter une autre. Ne reste pas bloqué au risque de ne rien produire : on préfère un morpion qui ne propose pas de nouvelle partie plutôt qu'un morpion qui ne marche pas ! </p>

<p>Pour t'aider à adopter une approche intelligente face à ce projet complexe, on va tout d'abord te donner plusieurs astuces et méthodes de travail à suivre. Ensuite, en fonction du niveau de ton groupe de pair-programming, on va te donner des pistes pour démarrer le projet : à toi de voir si tu veux partir d'une feuille blanche, avoir quelques indices ou carrément partir d'un repo déjà structuré. </p>

<p><b>Dernières consignes</b> : on veut un programme 100% en POO (tout dans des classes) mais sans base de données (pas de CSV / JSON ou autre).</p>

<h2>3. Rendu attendu</h2>
<p>Un repo GitHub par groupe de pair-programming (attention les loulous, chaque personne doit soumettre un lien GitHub avant minuit dans le formulaire ci-dessous sinon 💔). <br>
Le programme doit respecter : </p>
<ul>
  <li>Les consignes de jeu données en introduction et au début de la parti 2. ;</li>
  <li>L'architecture classique d'un projet Ruby (même si ça n'est pas un MVC) : 1 classe par fichier, un Gemfile, un dossier "lib", etc.</li>
  <li>Un README propre présentant le projet et comment le lancer (merci pour les correcteurs !)</li>
  <li>Les conventions classiques de Ruby sont à respecter, cela va sans dire.</li>
</ul>