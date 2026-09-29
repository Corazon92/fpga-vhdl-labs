# FPGA / VHDL Labs

> Travaux pédagogiques VHDL : logique combinatoire, hiérarchie, afficheur 7 segments et logique synchrone sous Quartus.  
> **English version below.**

## Matériel et outils

- **Altera / Intel Cyclone II EP2C20F484C7**
- Quartus
- VHDL
- RTL Viewer
- simulation temporelle
- Timing Analyzer

## TP1 — logique combinatoire

Le premier travail part d'une fonction combinatoire à quatre entrées. La synthèse est vérifiée avec le **RTL Viewer**, puis comparée à une table de vérité et à une simulation temporelle.

Une évolution remplace les signaux simples par des `bit_vector(3 downto 0)`.

## Afficheur 7 segments

Un décodeur associe une valeur binaire aux segments permettant d'afficher les chiffres 0 à 9. Une architecture hiérarchique instancie ensuite quatre composants d'affichage.

Les extraits VHDL conservés dans le rapport sont disponibles dans `src/`.

## TP2 — diviseur de fréquence

Le rapport décrit un diviseur basé sur :
- un compteur ;
- une comparaison avec `nb_cycles` ;
- remise à zéro du compteur ;
- basculement d'un registre `clk_reg`.

La carte dispose d'horloges 50 MHz, 27 MHz et 24 MHz.

Le code source complet du diviseur n'est pas présent dans le document archivé : il n'est donc pas reconstruit artificiellement.

## Système synchrone

Architecture étudiée :

`entrées → registres → logique combinatoire → registres de sortie`

Les entrées sont échantillonnées sur front montant. Le reset documenté est actif à l'état bas.

Le rapport indique un essai avec une horloge de période 20 ns et une analyse de timing sous Quartus.

**Important :** la copie du rapport tronque les équations de sortie de la version synchrone. Le fichier publié conserve cette limite explicitement plutôt que d'inventer les lignes manquantes.

## Nettoyage Quartus

Les bases temporaires, caches et résultats de compilation Quartus ne sont pas versionnés. Le dépôt conserve le VHDL lisible et la documentation nécessaire pour comprendre les exercices.

---

# English version

Educational VHDL/FPGA labs performed with **Quartus** on an **Altera/Intel Cyclone II EP2C20F484C7**.

Topics include combinational logic, RTL inspection, timing simulation, `bit_vector`, seven-segment decoding, hierarchical components, frequency division concepts and synchronous register → combinational logic → register architectures.

Only VHDL that can be recovered from the archived report is published. Missing/truncated original logic is explicitly identified instead of being reconstructed and presented as original code.
