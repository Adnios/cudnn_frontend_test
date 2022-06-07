INCLUDES = -I cudnn-frontend/include/
CPPFLAGS = $(INCLUDES) -DNV_CUDNN_DISABLE_EXCEPTION -lcudnn -std=c++17

TARGET = test_matmul_bias_tanh

all:
	nvcc ${TARGET}.cpp ${CPPFLAGS} -o ${TARGET}.out

clean:
	rm -rf *.out
