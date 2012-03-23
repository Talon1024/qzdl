/*
 * This file is part of qZDL
 * Copyright (C) 2007-2010  Cody Harris
 * 
 * qZDL is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
 
#include <QtGui>
#include <QApplication>
#include <QMainWindow>
#include "ZDLConfigurationManager.h"
#include <string.h>
#include "exclaim.xpm"
#include "question.xpm"

#include "ZInfoBar.h"

ZInfoBar::ZInfoBar(ZQWidget *parent): ZQWidget(parent){
	QPalette p(palette());
	normal = p.color(QPalette::Background);
	warning = QColor(255,96,96);
	info = QColor(255,234,191);
	setAutoFillBackground(true);
	QHBoxLayout *box = new QHBoxLayout(this);
	
	
	lbl = new QLabel(this);	
	txtlbl = new QLabel("", this);
	lbl->setPixmap(NULL);
	box->addWidget(lbl);
	
	box->addWidget(txtlbl);
	box->setSpacing(0);
	setContentsMargins(0,0,0,0);
	layout()->setContentsMargins(0,0,0,0);
	QPushButton *btn = new QPushButton("More",this);
	QPushButton *btnhide = new QPushButton("Hide",this);
	btn->setSizePolicy( QSizePolicy( QSizePolicy::Minimum, QSizePolicy::Preferred ));
	btnhide->setSizePolicy( QSizePolicy( QSizePolicy::Minimum, QSizePolicy::Preferred ));
	setSizePolicy( QSizePolicy( QSizePolicy::Maximum, QSizePolicy::Maximum ));
	box->addItem(new QSpacerItem(10000,0,QSizePolicy::Preferred));
	box->addWidget(btn);
	box->addWidget(btnhide);
	
	connect(btnhide, SIGNAL(clicked()), this, SLOT(hidebar()));
	connect(btn, SIGNAL(clicked()), this, SLOT(more()));
	
	setVisible(false);
}

void ZInfoBar::hidebar(){
	disconnect(this, 0, 0, 0);
	setVisible(false);
}

void ZInfoBar::more(){
	emit moreclicked();
}

void ZInfoBar::setMessage(const char* message, int icon){
	QPalette p(palette());
	disconnect(this, 0, 0, 0);
	if(icon == 0){
		p.setColor(QPalette::Background,normal);
	}else if(icon == 1){
		p.setColor(QPalette::Background,warning);
		txtlbl->setText(message);
		lbl->setPixmap(QPixmap(exclaim));
	}else if(icon == 2){
		p.setColor(QPalette::Background,info);
		txtlbl->setText(message);
		lbl->setPixmap(QPixmap(question));
	}
	setVisible(true);
	setPalette(p);
}
