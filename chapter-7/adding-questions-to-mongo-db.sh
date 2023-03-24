# SSH-ing inside the Mongo DB
kubectl exec -it quiz -c mongo -- mongo

# Once inside the container, switch to kiada database
use kiada;

db.questions.insert({
    id: 1,
    text: "What does that mean",
    answers: ["Kates", "Kubernetes", "Kooba Dooba Doo!"],
    correctAnswerIndex: 1 });


# Restarting the mongo service results in re-creating the container
kubectl exec -it quiz -c mongo -- mongo admin --eval "db.shutdownServer()"

# Checking if the question is still preserved after restarting the container
kubectl exec -it quiz -c mongo -- mongo kiada --quiet --eval "db.questions.count()"