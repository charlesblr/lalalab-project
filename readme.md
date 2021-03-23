# Lalalab Project

## Part 1:

Create a web app which displays "Hello Lalalab !" with a simple html file.
Via a GitHub Action, build a docker image and push it on a docker registry.
NB: I use GCP Container Registry.

## Part 2:

Via Terraform, create a web server to host the docker image created in Part 1.
Give it a public end point.
NB: I use GCP Cloud Run.

## Documentation (en français):

Pour la partie 1, voir le dossier "lalalab-project". J'ai créé un dossier public-html qui contient un fichier html affichant "hello lalalab". J'ai créé un Dockerfile pour dockeriser cette webapp statique à partir d'une image d'Apache 2.4. Pour la CI, j'ai utilisé GitHub et j'ai créé un fichier yml utilisant des GitHub Actions afin de pouvoir pousser l'image créée sur mon GCP Container Registry. 

## Problème avec la partie 2 (en français)

Pour la partie 2, j'ai créé un dossier "terraform-for-lalalab" qui contient un fichier Terraform pour la configuration du service GCP Cloud Run afin de déployer l'image disponible dans mon GCP Container Registry, et qui contient un fichier json contenant mes clefs d'authentifications pour mon compte GCP. Lorsque que je construit mon infrastructure (en utilisant terraform apply) j'obtiens que mon container n'arrive pas à démarrer. J'ai eu le même problème que j'utilise Terraform directement sur mon ordinateur, ou que j'utilise Terraform directement dans GCP Cloud Shell. En cherchant cette erreur "message: Cloud Run error: Container failed to start. Failed to start and then listen on the port defined by the PORT environment variable." je n'ai trouvé aucune solution. Pour avoir plus de details je suis aller voir dans mes logs sur GCP, et j'ai trouvé l'erreur "AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using 127.0.0.1. Set the 'ServerName' directive globally to suppress this message", mais je n'ai trouvé aucune solution non plus. 


