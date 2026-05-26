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

public class ColorSpaceCmykApproxFogra51 extends AbstractColorSpaceCmykApprox {
	// Approximation for the FOGRA51 printing condition registered in the ICC
	// CMYK Characterization Data Registry:
	// https://registry.color.org/cmyk-registry/fogra51
	//
	// Source condition:
	//   Reference name: FOGRA51
	//   Short designation: OFCOM
	//   Printing process definition: ISO 12647-2:2013
	//   Substrate: PS 1, premium coated, 115 g/m2
	//   Measurement condition: ISO 13655:2009 M1, white backing
	//
	// Constants below follow the CMYK approximation recipe in AbstractColorSpaceCmykApprox.
	// The Neugebauer primaries are selected solid-overprint Lab values from FOGRA51.txt converted to D50 XYZ.
	// The tone curves use the CMYK_C, CMYK_M, CMYK_Y, CMYK_K, LAB_L, LAB_A, and LAB_B fields from FOGRA51.txt.
	// The full characterization data is not bundled here.
	// The measured FOGRA51 paper white is normalized to PCS D50 white for CSS/ICC-like relative color conversion.
	// The Yule-Nielsen n value is fitted against the same characterization data, not against an ICC profile.
	// This class is not an ICC-profile-accurate conversion.
	private static final double[][] NEUGEBAUER_PRIMARIES_XYZ_D50 = {
			{0.852871327436, 0.876183294723, 0.793092611955}, // Paper
			{0.162124400614, 0.240321810119, 0.570615346714}, // C
			{0.334768904695, 0.168417352223, 0.159445098224}, // M
			{0.058731161743, 0.04332006567, 0.168133007188}, // CM
			{0.694976860307, 0.740370680548, 0.071638595929}, // Y
			{0.077939786774, 0.179620121152, 0.071502282205}, // CY
			{0.317190327034, 0.167865853458, 0.02762111061}, // MY
			{0.0364443794, 0.038768314337, 0.034429255351}, // CMY
			{0.020274363674, 0.020993070647, 0.017634154256}, // K
			{0.012676727214, 0.014336693432, 0.016960268464}, // CK
			{0.019057566504, 0.01611494744, 0.0102017933}, // MK
			{0.014705817557, 0.013222191874, 0.010902772359}, // CMK
			{0.017749051577, 0.019777417812, 0.011212172776}, // YK
			{0.012271501266, 0.015544320297, 0.010635676316}, // CYK
			{0.018174523042, 0.017419124236, 0.009276698759}, // MYK
			{0.014808256905, 0.015160921875, 0.009156208896} // CMYK
	};
	private static final double[][][] TONE_CURVES = {
			{
					{0.0, 0.0}, {0.1, 0.141209973594}, {0.2, 0.276884313271}, {0.3, 0.402322080331}, {0.4, 0.518408011012}, {0.55, 0.676572035375}, {0.7, 0.816560737721}, {0.85, 0.927779460273}, {1.0, 1.0}
			},
			{
					{0.0, 0.0}, {0.1, 0.146061472148}, {0.2, 0.282620239041}, {0.3, 0.408714297670}, {0.4, 0.525060296175}, {0.55, 0.681509082740}, {0.7, 0.818040116350}, {0.85, 0.927868693387}, {1.0, 1.0}
			},
			{
					{0.0, 0.0}, {0.1, 0.156716621782}, {0.2, 0.299950356724}, {0.3, 0.429408197225}, {0.4, 0.546122156333}, {0.55, 0.702136913704}, {0.7, 0.833916381361}, {0.85, 0.936456930978}, {1.0, 1.0}
			},
			{
					{0.0, 0.0}, {0.1, 0.160275548175}, {0.2, 0.303659706811}, {0.3, 0.433713084411}, {0.4, 0.552004313441}, {0.7, 0.839789267223}, {0.85, 0.940000108187}, {1.0, 1.0}
			}
	};

	protected ColorSpaceCmykApproxFogra51() {
		super("--fogra51", NEUGEBAUER_PRIMARIES_XYZ_D50, TONE_CURVES, true, 1.15);
	}
}
