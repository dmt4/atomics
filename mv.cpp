#include "mv.h"

MV::MV(QWidget *parent)
    : QMainWindow(parent)
{
    srf = new Srf(854, 480, this);
    setCentralWidget(srf);
    resize(854, 480);
}

MV::~MV()
{

}
