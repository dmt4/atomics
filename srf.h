//#define MAEMO6

#ifndef SRF_H
#define SRF_H

#include <QWidget>
#include <QTimer>
#include <QPainter>
#include <QPaintEvent>

//#ifdef MAEMO6
  #include <QAccelerometer>
  #include <QMagnetometer>
    namespace QtMobility {
        class QAccelerometer;
        class QMagnetometer;
    }

    using namespace QtMobility;

//#endif

class Srf : public QWidget
{
    Q_OBJECT
public:
    explicit Srf(int bbx, int bby, QWidget *parent = 0);

    double dt, dt2, sg, ep, sg6, gx, gy, gz;
    int px, py, bbx, bby;
    double mrx, mry ;


signals:

public slots:
    void ignite();

private slots:
    void paintEvent(QPaintEvent *);
//#ifdef MAEMO6
    void set_g();
//#endif

private:
    QList<double> xs, ys, vx, vy, a;
    QList<QColor> cols;
    QTimer *tmr;
    int np, c;
    double rndmx;
    QPainter qp;
    double rsq, dxs, dys, r6, ac;



//#ifdef MAEMO6
//    QAccelerometer *sen;
    QMagnetometer *sen;
//#endif

};

#endif // SRF_H
