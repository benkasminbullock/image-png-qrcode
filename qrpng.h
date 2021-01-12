/*
This file was generated by the following command:

cfunctions qrpng.c

*/
#ifndef CFH_QRPNG_H
#define CFH_QRPNG_H

#line 8 "qrpng.c"
typedef struct qrpng
{
    /* Size of a module in pixels. */
    unsigned int scale;
    /* Size of the quietzone in modules. */
    unsigned int quietzone;
    char * filename;
    /* PNG stuff. */
    png_structp png;
    png_infop info; 
    png_byte ** row_pointers;
    /* Number of blocks in the image part (not including the quiet zone). */
    int size;
    /* Actual size of the PNG image. The image is always square, so
       the width is equal to the height. */
    unsigned int img_size;
    png_byte * quiet;
}
qrpng_t;
typedef enum qrpng_status
{
    qrpng_ok,
    qrpng_bad_scale,
    qrpng_bad_quietzone,
    qrpng_bad_filename,
    qrpng_bounds,
}
qrpng_status_t;
#define QUIETZONE 4
#define MAX_SCALE 100
#define MAX_QUIETZONE 100
#define QRPNG_DEFAULT_QUIET QUIETZONE
#define QRPNG_MINIMUM_QUIET 0
#define QRPNG_MAXIMUM_QUIET 100
#define QRPNG_DEFAULT_SCALE 3
#define QRPNG_MINIMUM_SCALE 1
#define QRPNG_MAXIMUM_SCALE MAX_SCALE

#line 33 "qrpng.c"
qrpng_status_t qrpng_make_png (qr_t* qr, qrpng_t* qrpng);

#line 116 "qrpng.c"
qrpng_status_t qrpng_write (qrpng_t* qrpng);

#line 135 "qrpng.c"
qrpng_status_t qrpng_free (qrpng_t* qrpng);

#endif /* CFH_QRPNG_H */