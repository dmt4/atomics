#include <QApplication>
#include "mv.h"
#include <QObject>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MV w;
    w.setWindowFlags(Qt::FramelessWindowHint);
    QTimer tm;
    w.show();

    tm.setSingleShot(true);
    tm.setInterval(1000);
    QObject::connect(&tm,SIGNAL(timeout()),w.srf, SLOT(ignite()));
    tm.start();
    return a.exec();
}
