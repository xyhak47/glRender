#pragma once
#ifndef GLMACRO_H
#define GLMACRO_H

#pragma comment (lib, "glew32s.lib")
#pragma comment (lib, "freeglut_static.lib")
//#pragma comment (lib, "freeglut_staticd.lib")


/*Macros*/
#define BUFFER_OFFSET(x)  ((const void*) (x))

/*for window*/
#define	WINDOW_WIDTH	800
#define WINDOW_HEIGHT	600
#define	WINDOW_TITLE	"glRender_Version_0.1"
#define SAFE_DELETE_POINTER(_p)	\
	if (_p)						\
	{							\
		delete	_p;				\
		_p = NULL;				\
	}


#endif // !GLMACRO_H
