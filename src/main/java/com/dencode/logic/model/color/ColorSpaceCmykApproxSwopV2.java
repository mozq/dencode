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

public class ColorSpaceCmykApproxSwopV2 extends AbstractColorSpaceCmykApprox {
	// Approximation for U.S. Web Coated (SWOP) v2 / USWebCoatedSWOP.icc.
	//
	// The Adobe profile is listed as "Web Coated (SWOP) v2" in the Adobe Color Profile Bundling Agreement.
	// That profile is not bundled here.
	// This approximation uses the public characterization data referenced by the ICC CMYK Characterization Data Registry.
	// https://registry.color.org/cmyk-registry/cgats_tr_001
	// https://printtechnologies.org/standards/characterization-data-sets
	//
	// Source condition:
	//   Reference name: CGATS TR 001
	//   Data description: SWOP (Publication) printing in USA
	//   Printing process definition: ANSI CGATS.6
	//   Measurement backing: White
	//   Characterization data: ANSI CGATS TR 001 dataset, D50, CIE 2 degree
	//
	// Constants below follow the CMYK approximation recipe in AbstractColorSpaceCmykApprox.
	// The Neugebauer primaries are selected solid-overprint XYZ values from TR001CLR.AVG, scaled from 0..100 to 0..1.
	// The tone curves use the CMYK_C, CMYK_M, CMYK_Y, CMYK_K, XYZ_X, XYZ_Y, and XYZ_Z fields from TR001CLR.AVG.
	// The full characterization data is not bundled here.
	// The measured TR001 paper white is normalized to PCS D50 white for CSS/ICC-like relative color conversion.
	// This class is not an ICC-profile-accurate conversion.
	private static final double[][] NEUGEBAUER_PRIMARIES_XYZ_D50 = {
			{0.7101, 0.7373, 0.5718}, // Paper
			{0.1544, 0.2365, 0.4564}, // C
			{0.3063, 0.1614, 0.1459}, // M
			{0.0613, 0.048, 0.1534}, // CM
			{0.5977, 0.6468, 0.0768}, // Y
			{0.0952, 0.1993, 0.0762}, // CY
			{0.2869, 0.1582, 0.0298}, // MY
			{0.0418, 0.0424, 0.0341}, // CMY
			{0.0259, 0.0266, 0.0209}, // K
			{0.0132, 0.0166, 0.0213}, // CK
			{0.0171, 0.0127, 0.0104}, // MK
			{0.0102, 0.0089, 0.0122}, // CMK
			{0.0209, 0.0229, 0.0099}, // YK
			{0.0117, 0.0167, 0.0105}, // CYK
			{0.0172, 0.0141, 0.0078}, // MYK
			{0.0097, 0.0101, 0.008} // CMYK
	};
	private static final double[][][] TONE_CURVES = {
			{
					{0.0, 0.0}, {0.03, 0.088521120118}, {0.07, 0.148435574554}, {0.1, 0.191672170664}, {0.15, 0.263825426359}, {0.2, 0.333585188743}, {0.25, 0.396243207356}, {0.3, 0.465590260597}, {0.4, 0.577496705983}, {0.5, 0.67814043562}, {0.6, 0.757795277149}, {0.7, 0.836589681423}, {0.8, 0.900793399617}, {0.9, 0.961500996128}, {1.0, 1.0}
			},
			{
					{0.0, 0.0}, {0.03, 0.08624868502}, {0.07, 0.140396131363}, {0.1, 0.177892433136}, {0.15, 0.247864085162}, {0.2, 0.316224025051}, {0.25, 0.379297827105}, {0.3, 0.445382145826}, {0.4, 0.562124461699}, {0.5, 0.660225179122}, {0.6, 0.741383004777}, {0.7, 0.816024804424}, {0.8, 0.888016907078}, {0.9, 0.952383887314}, {1.0, 1.0}
			},
			{
					{0.0, 0.0}, {0.03, 0.093525712069}, {0.07, 0.147109200034}, {0.1, 0.190071553645}, {0.15, 0.262254410556}, {0.2, 0.324482641933}, {0.25, 0.383175060876}, {0.3, 0.451383645589}, {0.4, 0.569639250993}, {0.5, 0.671134444031}, {0.6, 0.752364681687}, {0.7, 0.825914676692}, {0.8, 0.911033529412}, {0.9, 0.96627380398}, {1.0, 1.0}
			},
			{
					{0.0, 0.0}, {0.03, 0.106594868796}, {0.07, 0.17202836038}, {0.1, 0.205827523037}, {0.15, 0.296738352682}, {0.2, 0.352517263631}, {0.25, 0.434064901284}, {0.3, 0.50512826295}, {0.4, 0.613973046883}, {0.5, 0.713958546185}, {0.6, 0.788763783713}, {0.7, 0.854582009795}, {0.8, 0.91499414673}, {0.9, 0.966141104794}, {1.0, 1.0}
			}
	};

	protected ColorSpaceCmykApproxSwopV2() {
		super("--swop-v2", NEUGEBAUER_PRIMARIES_XYZ_D50, TONE_CURVES, true);
	}
}
