#include "mv.h"

MV::MV(QWidget *parent)
    : QMainWindow(parent)
{
//    srf = new Srf(854, 480, this);
    srf = new Srf(1920, 1080, this);
    setCentralWidget(srf);
    resize(1920, 1080);
}

MV::~MV()
{

}
