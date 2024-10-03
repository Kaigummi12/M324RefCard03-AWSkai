
# CI-CD_GitHub_React_RefCard03-AWS von Kai Wenninger

Als erstes habe ich das vorgegebene GitLab Repo geklont https://gitlab.com/bbwrl/m346-ref-card-02 und auf GitHub gepusht.

![image](https://github.com/user-attachments/assets/394b2477-1dcf-42cb-b635-e7d07049b5cd)

Dann habe ich für die Konfiguration ein yml und ein Dockerfile hinzugefügt. Für die yml Datei habe ich ein Verzeichnis .github/workflows erstellt.

Deploy.yml file:

![image](https://github.com/user-attachments/assets/d46dbc2f-f6b5-4b98-b205-c1f77da74307)

Dockerfile:

![image](https://github.com/user-attachments/assets/c50565b0-5e2e-4752-9127-f8191b3d36b6)

## Auf AWS ein ECR Repository erstellen

Ich habe anschliessend ein Repo auf AWS erstellt.

![image](https://github.com/user-attachments/assets/7d7b0a29-aa24-4e61-a2a9-5aaec86cae27)

Und habe es folgerndermassen genannt.

![image](https://github.com/user-attachments/assets/d59a0a74-6f38-4ebb-b6e2-dd2463ceb1c0)

## Hinzufügen von Credentials auf GitHub bei GitHub Actions

Als nächstes bin ich auf GitHub gegangen zu Setting -> Secrets and variables -> Actions

![image](https://github.com/user-attachments/assets/2c19714c-cc56-4247-bd7c-387cf1eea68f)

Dort habe ich dann neue Secret Repositories erstellt mit folgenden Umgebungsvariablen.

![image](https://github.com/user-attachments/assets/8bc4a00d-29df-4f28-a95d-d6d9486550ae)

Wichtig zu beachten ist, dass wen man das LearnerLab auf AWS neustartet werden neue credentials generiert und man muss sie anpassen. (z.B Session token)

Nun habe ich den Build auf GitHub laufen gelassen und bei mir lief er erfolgreich durch. 

![image](https://github.com/user-attachments/assets/931d398d-408e-4498-a5ab-48b13454a695)

Ich habe ebenfalls überprüft, ob es auch auf AWS funktioniert hat. Dort sah ich auch das es erfolgreich geklappt hat.

![image](https://github.com/user-attachments/assets/fa0ed294-d7b1-4c93-a76e-848333300ceb)

## Erweiterung mit ECS
In meinem Projekt habe ich AWS so eingerichtet, dass bei jeder Änderung des Docker-Images automatisch ein neuer Container im Elastic Container Service (ECS) erstellt wird. ECS ermöglicht die einfache Verwaltung und Skalierung von containerisierten Anwendungen. Durch die Verwendung von ECS, ECR und einer CI/CD-Pipeline wird sichergestellt, dass stets die neueste Version der Anwendung ohne manuelle Eingriffe bereitgestellt wird.
Nachdem ich ein Cluster erstellt habe, habe ich dort drin einen Service erstellt.

<img width="1032" alt="image" src="https://github.com/user-attachments/assets/e54a6ca3-6078-4cc5-b226-ee0745e51b1b">



<img width="1370" alt="image" src="https://github.com/user-attachments/assets/e3a0e287-04d7-471c-a83a-fcb296a45d13">



Auf dem Bild sieht man das ich neben dem ECR auch noch ein ECS erstellt habe.











