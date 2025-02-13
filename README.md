# perfetto-example

## Installation
0. Clone this repo with submodules
```
git clone --recursive https://github.com/xldrx/perfetto-example
```
Or load the submodules manually:
```
git submodule update --init --recursive
```

1. Install Packages:
```
brew install protobuf bazel virtualenv
```

2. Generate Perfetto Proto Stubs
```
bash build-perfetto-protos.sh
```

3. Install Python Requirements:
```
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
```

## Generate a Trace
0. Activate venv
```
source venv/bin/activate
```
1. Start Jupyter
  `jupyter notebook`

2. Generate a trace from notebook

3. Start a local web server
```
cd reports/
python -m -m http.server
```

4. Go to http://localhost:8000/example.html
