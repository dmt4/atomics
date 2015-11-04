#include "mv.h"

MV::MV(QWidget *parent)
    : QMainWindow(parent)
{
    srf = new Srf(1080, 1920, this);
    setCentralWidget(srf);
    resize(1080, 1920);
}

MV::~MV()
{

}
