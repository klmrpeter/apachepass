#!/usr/bin/env python3

npm install -g aws-cdk
mkdir proba
cd proba
cdk init --language python
source .env/bin/activate
pip3 install -r requirements.txt
cd ..
echo cdkproba/apppy.txt > proba/app.py
echo cdkproba/stack.txt > proba/proba/proba_stack.py
pip3 install aws-cdk.aws-eks
cd proba
cdk synth
