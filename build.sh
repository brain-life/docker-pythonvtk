set -e
docker build -t brainlife/pythonvtk .
docker tag brainlife/pythonvtk brainlife/pythonvtk:1.1
docker push brainlife/pythonvtk
