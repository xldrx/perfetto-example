rm -rf perfetto_protos
mkdir perfetto_protos
cd perfetto-src

# setup bazel
tools/install-build-deps --bazel

# find all protobufs needed for trace.proto
PROTO_FILES=`bazel query 'kind("source file", deps(//:trace_cc_proto))' | grep protos/ | xargs -n1 | cut -c4- | paste -sd " " `

# bazel doesn't generate py_proto easily. use proto compiler to generate python stubs.
protoc --proto_path=. --python_out=../perfetto_protos ${PROTO_FILES}
cd ..