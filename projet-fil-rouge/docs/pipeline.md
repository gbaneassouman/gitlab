<<<<<<< HEAD
L'entreprise IC GROUP souhaite mettre en place un pipeline CI/CD permettant l'intégration et le déploiement en continu de cette solution sur leurs différentes machines dans différents environnements. L'entreprise étant fan de nouvelles technologies, elle a opté pour Gitlab-CI comme outil de mise en place du Pipeline CICD.

## a. Infrastructure
Pour cette partie, on aura besoin de 3 serveurs hébergés dans le cloud de `AWS`, dont les rôles seront les suivants:

  1) **Serveur 1**, ``(AWS, t2.medium)``: Runner Gitlab-CI
  2) **Serveur 2**, ``(AWS, t2.micro)`` : Serveur de STAGING 
  3) **Serveur 3**, ``(AWS, t2.micro)`` : Serveur de PROD 
Le choix du cloud provider importe peu (AWS, AZURE ou autres ...)
> :warning: Le serveur 1 (**Runner Gitlab-CI**) sera créé manuellement par vos soins pour les besoins de CI. Il devra être rataché à votre compte Gitlab pour en faire votre Runner privé. Quant aux deux autres, il seront créé automatiquement par le pipeline, via l'outil terraform.

=======
>>>>>>> features
## b. Etapes du pipeline

Le Pipeline devra faire les actions suivantes:

 1) Build de l'image ``ic-webapp``
 2) Test de l'image à l'aide des url officielles de odoo et pgadmin
 3) Push de l'image buildée sur dockerhub et votre registre privé  dans gitlab
 4) Création des serveurs de staging et de production dans le cloud
    - Le code terraform permettant de créer vos serveurs devra être présent dans votre dépot gitlab
    - Ce code terraform doit utiliser la notion de modules, afin de variabiliser au maximum votre déploiement.
    - ``Docker`` et ``Docker compose`` doivent être installés sur ces machines
 5) Déploiement des applications sur les deux serveurs de staging et de prod
    - Les applications à déployer sont ``ic-webapp``, ``odoo`` et sa base de donnée ``postgresql``, ``pgadmin``
    - Au déploiement de ic-webapp, ses variables d'environnement doivent cette fois ci pointer vers les applications odoo et pgadmin installées par vos soins.
    - Le déploiement doit se faire à l'aide de l'outil ``docker-compose``, celà sous entend que vous devez disposer d'un fichier ``docker-compose.yml`` et le mettre dans votre dépôt gitlab.
 6) Test de fonctionnement permettant de s'assurer que chacune des 3 applications déployées est fonctionnel
 7) Envoie des notifications du Pipeline dans un channel slack
