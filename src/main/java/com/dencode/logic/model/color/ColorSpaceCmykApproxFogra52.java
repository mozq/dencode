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

public class ColorSpaceCmykApproxFogra52 extends AbstractColorSpaceCmykApprox {
	// Approximation for the FOGRA52 printing condition registered in the ICC
	// CMYK Characterization Data Registry:
	// https://registry.color.org/cmyk-registry/fogra52
	//
	// Source condition:
	//   Reference name: FOGRA52
	//   Short designation: OFCOM
	//   Printing process definition: ISO 12647-2:2013
	//   Substrate: PS 5, wood-free uncoated, 120 g/m2
	//   Measurement condition: ISO 13655:2009 M1, white backing
	//
	// Constants below follow the CMYK approximation recipe in AbstractColorSpaceCmykApprox.
	// The Neugebauer primaries are selected solid-overprint Lab values from FOGRA52.txt converted to D50 XYZ.
	// The tone curves use the CMYK_C, CMYK_M, CMYK_Y, CMYK_K, LAB_L, LAB_A, and LAB_B fields from FOGRA52.txt.
	// The full characterization data is not bundled here.
	// The measured FOGRA52 paper white is normalized to PCS D50 white for CSS/ICC-like relative color conversion.
	// The Yule-Nielsen n value is fitted against the same characterization data, not against an ICC profile.
	// This class is not an ICC-profile-accurate conversion.
	private static final double[][] NEUGEBAUER_PRIMARIES_XYZ_D50 = {
			{0.824065086372, 0.841140200885, 0.810257321212}, // Paper
			{0.207523882861, 0.267047082573, 0.571082728519}, // C
			{0.372425987471, 0.224870454831, 0.205925582666}, // M
			{0.112816809508, 0.103537615333, 0.205695590194}, // CM
			{0.675957749476, 0.713607894373, 0.124039408841}, // Y
			{0.122813581296, 0.201176775117, 0.122629423804}, // CY
			{0.335328976579, 0.20673234974, 0.082262313571}, // MY
			{0.080724381333, 0.083049121774, 0.079032378163}, // CMY
			{0.07258232573, 0.073951222188, 0.060777948667}, // K
			{0.059060692391, 0.062684973062, 0.058607728093}, // CK
			{0.066758480721, 0.061710612817, 0.046582300274}, // MK
			{0.055634581655, 0.054313731637, 0.045224008783}, // CMK
			{0.069760842466, 0.073632728848, 0.048023262259}, // YK
			{0.053935449613, 0.059397707199, 0.045372579878}, // CYK
			{0.057492256802, 0.055358915944, 0.038438586103}, // MYK
			{0.048124247759, 0.048696067038, 0.037992204166} // CMYK
	};
	private static final double[][][] TONE_CURVES = {
			{
					{0.0, 0.0}, {0.02, 0.039086084053}, {0.03, 0.058597308945}, {0.05, 0.096223724541}, {0.07, 0.133541053466}, {0.1, 0.187630158538}, {0.15, 0.267737087544}, {0.2, 0.342955864856}, {0.25, 0.410662376006}, {0.3, 0.474546686381}, {0.4, 0.587651702916}, {0.5, 0.685334889257}, {0.55, 0.729972367116}, {0.6, 0.771768590589}, {0.7, 0.849424189101}, {0.75, 0.883727848831}, {0.8, 0.915824782993}, {0.85, 0.942470359575}, {0.9, 0.967874533187}, {0.95, 0.985697463463}, {0.98, 0.994280006439}, {1.0, 1.0}
			},
			{
					{0.0, 0.0}, {0.02, 0.039577573567}, {0.03, 0.059138787858}, {0.05, 0.097334741285}, {0.07, 0.135204636527}, {0.1, 0.189782190978}, {0.15, 0.2707545493}, {0.2, 0.346586324179}, {0.25, 0.414816769615}, {0.3, 0.479262143671}, {0.4, 0.592599721895}, {0.5, 0.689392039961}, {0.55, 0.733604746812}, {0.6, 0.774983689976}, {0.7, 0.851588656163}, {0.75, 0.885597038825}, {0.8, 0.917295063566}, {0.85, 0.943771018604}, {0.9, 0.968500368811}, {0.95, 0.986069495961}, {0.98, 0.994592647354}, {1.0, 1.0}
			},
			{
					{0.0, 0.0}, {0.02, 0.04272802861}, {0.03, 0.063992071825}, {0.05, 0.105028109331}, {0.07, 0.145222795659}, {0.1, 0.20340025836}, {0.15, 0.288518955049}, {0.2, 0.36769838847}, {0.25, 0.438376826096}, {0.3, 0.503754849295}, {0.4, 0.617644670642}, {0.5, 0.714253514838}, {0.55, 0.757591272779}, {0.6, 0.797494836007}, {0.7, 0.869248656106}, {0.75, 0.900264127862}, {0.8, 0.928687552869}, {0.85, 0.951839647956}, {0.9, 0.973159118745}, {0.95, 0.988244724606}, {0.98, 0.995410387935}, {1.0, 1.0}
			},
			{
					{0.0, 0.0}, {0.02, 0.043747769458}, {0.03, 0.065046285422}, {0.05, 0.106680847369}, {0.07, 0.147776157269}, {0.1, 0.206749452693}, {0.15, 0.293408310804}, {0.2, 0.373285751333}, {0.25, 0.444505726851}, {0.3, 0.510467808927}, {0.4, 0.624309717321}, {0.5, 0.721878878024}, {0.6, 0.805154968317}, {0.7, 0.875688142374}, {0.75, 0.906263097548}, {0.8, 0.933206142498}, {0.85, 0.955607680456}, {0.9, 0.975384341924}, {0.95, 0.989137568518}, {0.98, 0.995738210761}, {1.0, 1.0}
			}
	};

	protected ColorSpaceCmykApproxFogra52() {
		super("--fogra52", NEUGEBAUER_PRIMARIES_XYZ_D50, TONE_CURVES, true, 1.11);
	}
}
