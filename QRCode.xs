#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "ppport.h"

#include "image-png-qrcode-perl.c"

typedef image_png_qrcode_t * Image__PNG__QRCode;

MODULE=Image::PNG::QRCode PACKAGE=Image::PNG::QRCode

PROTOTYPES: DISABLE

BOOT:
	/* Image__PNG__QRCode_error_handler = perl_error_handler; */

