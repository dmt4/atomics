#ifndef MV_H
#define MV_H

#include <QMainWindow>
#include <srf.h>

class MV : public QMainWindow
{
    Q_OBJECT

public:
    MV(QWidget *parent = 0);
    ~MV();

    Srf *srf;
};

#endif // MV_H
