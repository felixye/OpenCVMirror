%typemap(in) CvMat ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) CvMatND ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) IplConvKernel ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) void ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) CvMemStorage ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) CvFileStorage ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) CvConDensation ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) CvArr ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) CvSeq ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) CvKalman ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) CvPoint ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) CvSeqBlock ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) CvGraphScanner ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) CvGraphEdge ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) CvHaarClassifierCascade ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) IplImage ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) char ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) CvHistogram ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) CvPOSITObject ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) CvSetElem ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) CvSparseMat ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) uchar ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) CvSubdiv2DPoint ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) CvGraphVtx ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
%typemap(in) float ** { $*1_ltype buffer; if ((SWIG_ConvertPtr($input, (void **) &buffer, $*1_descriptor, 1)) == -1) return 0; $1=&buffer; };
