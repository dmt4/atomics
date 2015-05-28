#include "srf.h"
#include "QDebug"
#include <QtCore/qmath.h>

Srf::Srf(int bbx, int bby, QWidget *parent) :
    QWidget(parent)
{

    tmr = new QTimer(this);
    tmr->setInterval(24);
    connect(tmr, SIGNAL(timeout()), SLOT(repaint()));

    this->bbx = bbx;
    this->bby = bby;
    resize(bbx,bby);

    mrx = 20.;
    mry = 20.;
    np = 64;
    dt = 0.0004;
    dt2 = dt*dt;
    for (int it = 0; it < 3; ++it) {
        for (int ip = 0; ip < np; ++ip) {
            xs << 0.0;
            ys << 0.0;
        }
    }

    ep = -128.0;
    sg = 64.;
    gx = 0.;
    gy = 0.;
    sg6 = sg*sg*sg*sg*sg*sg;

    for (int ip = 0; ip < np; ++ip) {
        vx << 0.0;
        vy << 0.0;
    }

    for (int ip = 0; ip < np; ++ip) cols << QColor::fromHsv(int((ip*255.0)/np),255,255);



    rndmx = double(RAND_MAX);
//    qDebug() << rndmx;
    qsrand(3314);


    for (int i=0; i< 100; ++i) qDebug() << qrand();


//    qDebug() << rndmx << RAND_MAX;

    for (int ip = 0; ip < np; ++ip) {
        xs[ip] = qBound( mrx, bbx*(qrand()/rndmx), bbx-mrx);
        ys[ip] = qBound( mry, bby*(qrand()/rndmx), bby-mry);
        xs[ip] = 2*mrx + int(sg*ip)%int(bbx-4*mrx);
        ys[ip] = 2*mry + int(double(sg*sg*ip)/double(bbx-4*mrx));
//        qDebug() << xs[ip] << ys[ip];
    }

    c = 0;

    px = 50;
    py = 50;

//#ifdef MAEMO6
//    sen = new QAccelerometer(this);
    sen = new QMagnetometer(this);
    connect(sen, SIGNAL(readingChanged()), SLOT(set_g()));
    sen->setDataRate ( 10 );
    sen->start();
//#endif

}


 void Srf::ignite() {
//     qp.setPen(Qt::red);
//     qp.setBrush(Qt::yellow);

//     qDebug() << "ignite";
     for (int ip = 0; ip < np; ++ip) {
         xs[ip + np] = xs[ip] + vx[ip] * dt;
         ys[ip + np] = ys[ip] + vy[ip] * dt;

//         mbod
         for (int iq = 0; iq < np; ++iq) {
             if (iq == ip) continue;
             dxs = xs[iq] - xs[ip];
             dys = ys[iq] - ys[ip];
             rsq = dxs*dxs + dys*dys;
             if (rsq < 16*sg*sg) {
                 r6 = rsq*rsq*rsq;

                 ac = 12 * (ep/rsq) * (sg6/r6) * (2*(sg6/r6) - 1.0)*dt2;
    //             qDebug() << dxs << dys << rsq << r6 << ac;
                 xs[ip + np] += dxs * ac;
                 ys[ip + np] += dys * ac;
             }
         }

//         walls
         xs[ip+np] += (3./(xs[ip])) * qPow(4*sg/(xs[ip]),6.)*dt2 + (3./(xs[ip] - bbx)) * qPow(4*sg/(xs[ip] - bbx),6.)*dt2;
         ys[ip+np] += (3./(ys[ip])) * qPow(4*sg/(ys[ip]),6.)*dt2 + (3./(ys[ip] - bby)) * qPow(4*sg/(ys[ip] - bby),6.)*dt2;

         xs[ip+np] += gx * dt2/2.;
         ys[ip+np] += gy * dt2/2.;

//         bind
         xs[ip + np] = qBound(mrx,xs[ip + np],bbx-mrx);
         ys[ip + np] = qBound(mry,ys[ip + np],bby-mry);
     }

     c += 1;

//     for (int ip=0; ip<2*np; ++ip) {
//         qDebug() << "i " << xs[ip] << ys[ip];
//     }

     tmr->start();
 }


 void Srf::paintEvent(QPaintEvent *ev) {

     int ipb, ipc, ipn, iqc;

     qp.begin(this);
     qp.fillRect(ev->rect(),Qt::black);
//     qDebug() << ev->rect();

     if (c<1) {qp.end(); return;}

     qp.setPen(Qt::black);
     for (int ip = 0; ip < np; ++ip) {         
         qp.setBrush(cols[ip]);
         //         qDebug() << ip << c << xs[ip+(c%3)*np] << ys[ip+(c%3)*np];
         ipc = ip+(c%3)*np;
         qp.drawEllipse(QPointF(xs[ipc],ys[ipc]),8,8);
     }

     qp.setPen(Qt::yellow);
     qp.drawText(ev->rect(),Qt::AlignCenter,QString::number(gx)
                                      +"\n"+QString::number(gy)
                                      +"\n"+QString::number(gz));
     qp.end();






     for (int it=0; it<8; ++it) {

         for (int ip = 0; ip < np; ++ip) {

             ipb = ip+((c-1)%3)*np;
             ipc = ip+(c%3)*np;
             ipn = ip+((c+1)%3)*np;

             xs[ipn] = 2*xs[ipc] - xs[ipb];
             ys[ipn] = 2*ys[ipc] - ys[ipb];
             for (int iq = 0; iq < np; ++iq) {
                 if (iq == ip) continue;
                 iqc = iq+(c%3)*np;
                 dxs = xs[iqc] - xs[ipc];
                 dys = ys[iqc] - ys[ipc];
                 rsq = dxs*dxs + dys*dys;
                 if (rsq < 16*sg*sg) {
                     r6 = rsq*rsq*rsq;
                     ac = 24 * (ep/rsq) * (sg6/r6) * (2*(sg6/r6) - 1)*dt2;
                     xs[ipn] += dxs * ac;
                     ys[ipn] += dys * ac;
                 }
             }
//         walls
             if (xs[ipc] < 4*sg || xs[ipc] > (bbx - 4*sg)) xs[ipn] += (6./xs[ipc]) * qPow(4*sg/xs[ipc],6.)*dt2 + (6./(xs[ipc] - bbx)) * qPow(4*sg/(xs[ipc] - bbx),6.)*dt2;
             if (ys[ipc] < 4*sg || ys[ipc] > (bby - 4*sg)) ys[ipn] += (6./ys[ipc]) * qPow(4*sg/ys[ipc],6.)*dt2 + (6./(ys[ipc] - bby)) * qPow(4*sg/(ys[ipc] - bby),6.)*dt2;

//             vfield
             xs[ipn] += gx * dt2;
             ys[ipn] += gy * dt2;

//             frikt

             xs[ipn] = xs[ipc] + (xs[ipn] - xs[ipc])/qMax(1., 0.001*qAbs(xs[ipn] - xs[ipb])/(2*dt));
             ys[ipn] = ys[ipc] + (ys[ipn] - ys[ipc])/qMax(1., 0.001*qAbs(ys[ipn] - ys[ipb])/(2*dt));


    //         xs[ipn] = qBound(20.,xs[ipn],bbx-20.);
    //         ys[ipn] = qBound(20.,ys[ipn],bby-20.);

    //         if (xs[ipn] == 20. && ys[ipn] == 20.) {
    //             qDebug() << c << ip;
    //         }
         }


         c+=1;
     }

 }

//#ifdef MAEMO6
 void Srf::set_g() {
     gx = 1024*sen->reading()->y();
     gy = 1024*sen->reading()->x();
     gz = 1024*sen->reading()->z();

     gx *= 1024;
     gy *= 1024;
     gy -= 64;
     gz *= 1024;


     gx *= 64;
     gy *= 64;
     gz *= 64;


//     qDebug() << gx << gy;
 }
//#endif
