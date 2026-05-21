/*!
 * DenCode
 * Copyright 2016 Mozq
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.dencode.logic.model.color;

final class ColorSpaceColorFixtures {

	record ColorFixture(String name, double[] rgb, double[] xyzD65, double[] xyzD50) {
	}

	static final ColorFixture[] COLORS = {
		new ColorFixture("red", new double[]{1.0, 0.0, 0.0}, new double[]{0.41239079926595934, 0.21263900587151027, 0.01933081871559182}, new double[]{0.43606574687426930, 0.22249317711056518, 0.013923921463169380}),
		new ColorFixture("green", new double[]{0.0, 1.0, 0.0}, new double[]{0.357584339383878, 0.715168678767756, 0.11919477979462598}, new double[]{0.38515150959015976, 0.71688701309448255, 0.097081324231410165}),
		new ColorFixture("blue", new double[]{0.0, 0.0, 1.0}, new double[]{0.1804807884018343, 0.07219231536073371, 0.9505321522496607}, new double[]{0.14307841996513870, 0.060619809794952365, 0.71409935681588088}),
		new ColorFixture("yellow", new double[]{1.0, 1.0, 0.0}, new double[]{0.7699751386498374, 0.9278076846392663, 0.13852559851021778}, new double[]{0.82121725646442911, 0.93938019020504782, 0.11100524569457954}),
		new ColorFixture("cyan", new double[]{0.0, 1.0, 1.0}, new double[]{0.5380651277857122, 0.7873609941284897, 1.0697269320442866}, new double[]{0.52822992955529846, 0.77750682288943485, 0.81118068104729102}),
		new ColorFixture("magenta", new double[]{1.0, 0.0, 1.0}, new double[]{0.5928715876677937, 0.284831321232244, 0.9698629709652525}, new double[]{0.57914416683940806, 0.28311298690551756, 0.72802327827905022}),
		new ColorFixture("gray", new double[]{0.5, 0.5, 0.5}, new double[]{0.20343667060423742, 0.21404114048223255, 0.23310316302365935}, new double[]{0.20639894634507058, 0.21404114048223258, 0.17660633013847810}),
		new ColorFixture("white", new double[]{1.0, 1.0, 1.0}, new double[]{0.9504559270516717, 1.0, 1.0890577507598784}, new double[]{0.96429567642956782, 1.0, 0.82510460251046036}),
		new ColorFixture("black", new double[]{0.0, 0.0, 0.0}, new double[]{0.0, 0.0, 0.0}, new double[]{0.0, 0.0, 0.0}),
		new ColorFixture("orange", new double[]{1.0, 165.0 / 255.0, 0.0}, new double[]{0.5469362419508381, 0.48172989124126775, 0.06417929961055138}, new double[]{0.58098367154581532, 0.49223060660210494, 0.050451946621248286}),
		new ColorFixture("purple", new double[]{128.0 / 255.0, 0.0, 128.0 / 255.0}, new double[]{0.1279775574172914, 0.06148383144929487, 0.20935510595451154}, new double[]{0.12501434949200213, 0.061112910942164818, 0.15715146894387622}),
		new ColorFixture("indigo", new double[]{75.0 / 255.0, 0.0, 130.0 / 255.0}, new double[]{0.06930421383061718, 0.031076643893895917, 0.21354546896536397}, new double[]{0.062620731105015523, 0.029186677546799693, 0.16038662918987634}),
		new ColorFixture("pink", new double[]{1.0, 192.0 / 255.0, 203.0 / 255.0}, new double[]{0.7086623628695997, 0.6327286137205872, 0.6498196912712672}, new double[]{0.72453162154711248, 0.63657742395454497, 0.49155836884895315}),
		new ColorFixture("brown", new double[]{165.0 / 255.0, 42.0 / 255.0, 42.0 / 255.0}, new double[]{0.167625056565021, 0.09823806119130823, 0.03204123425728893}, new double[]{0.17630532466775911, 0.10171765534695133, 0.024020607594987677}),
		new ColorFixture("maroon", new double[]{128.0 / 255.0, 0.0, 0.0}, new double[]{0.08901888417192061, 0.04590036215114656, 0.004172760195558774}, new double[]{0.094129370202820778, 0.048027488483016960, 0.0030056246505863983}),
		new ColorFixture("olive", new double[]{128.0 / 255.0, 128.0 / 255.0, 0.0}, new double[]{0.1662072185042228, 0.20027703081575093, 0.02990220497299283}, new double[]{0.17726836768257592, 0.20277507765475139, 0.023961647850898202}),
		new ColorFixture("teal", new double[]{0.0, 128.0 / 255.0, 128.0 / 255.0}, new double[]{0.11614700757767296, 0.16996013796275267, 0.23091179053638683}, new double[]{0.11402397676893650, 0.16783301163088230, 0.17510186749360163}),
		new ColorFixture("navy", new double[]{0.0, 0.0, 128.0 / 255.0}, new double[]{0.03895867324537077, 0.015583469298148309, 0.20518234575895278}, new double[]{0.030884979289181345, 0.013085422459147863, 0.15414584429328981}),
		new ColorFixture("silver", new double[]{192.0 / 255.0, 192.0 / 255.0, 192.0 / 255.0}, new double[]{0.500999695465677, 0.5271151257058131, 0.5740588131926834}, new double[]{0.50829483669874376, 0.52711512570581320, 0.43492511627274627}),
		new ColorFixture("rebeccapurple", new double[]{102.0 / 255.0, 51.0 / 255.0, 153.0 / 255.0}, new double[]{0.12412299306629367, 0.07492510943998716, 0.30930332340200967}, new double[]{0.11626684439282621, 0.072604917326786977, 0.23253795202623095})
	};

	private ColorSpaceColorFixtures() {
	}
}
