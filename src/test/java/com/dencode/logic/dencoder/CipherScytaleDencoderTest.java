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
package com.dencode.logic.dencoder;

import org.junit.jupiter.api.Test;

public class CipherScytaleDencoderTest {
	private final DencoderTester tester = new DencoderTester(
			CipherScytaleDencoder::encCipherScytale,
			CipherScytaleDencoder::decCipherScytale,
			"cipher.scytale.key",
			"cipher.scytale.key-per");

	@Test
	public void testKeyPerY() {
		// Blank
		tester.test("", "", tester.options(2, "y"));
		tester.test("", "", tester.options(4, "y"));

		// THIS_IS_A_SE
		// CRET_MESSAGE
		tester.test("THIS_IS_A_SECRET_MESSAGE", "TCHRIEST__IMSE_SAS_ASGEE", tester.options(2, "y"));

		// THIS_IS_
		// A_SECRET
		// _MESSAGE
		tester.test("THIS_IS_A_SECRET_MESSAGE", "TA_H_MISESES_CSIRASEG_TE", tester.options(3, "y"));

		// THIS_I
		// S_A_SE
		// CRET_M
		// ESSAGE
		tester.test("THIS_IS_A_SECRET_MESSAGE", "TSCEH_RSIAESS_TA_S_GIEME", tester.options(4, "y"));

		// THIS_
		// IS_A_
		// SECRE
		// T_MES
		// SAGE
		tester.test("THIS_IS_A_SECRET_MESSAGE", "TISTSHSE_AI_CMGSAREE__ES", tester.options(5, "y"));

		// THIS
		// _IS_
		// A_SE
		// CRET
		// _MES
		// SAGE
		tester.test("THIS_IS_A_SECRET_MESSAGE", "T_AC_SHI_RMAISSEEGS_ETSE", tester.options(6, "y"));

		// THIS
		// _IS_
		// A_SE
		// CRET
		// _MES
		// SAGE
		//
		tester.test("THIS_IS_A_SECRET_MESSAGE", "T_AC_SHI_RMAISSEEGS_ETSE", tester.options(7, "y"));

		// THI
		// S_I
		// S_A
		// _SE
		// CRE
		// T_M
		// ESS
		// AGE
		tester.test("THIS_IS_A_SECRET_MESSAGE", "TSS_CTEAH__SR_SGIIAEEMSE", tester.options(8, "y"));

		// THI
		// S_I
		// S_A
		// _SE
		// CRE
		// T_M
		// ESS
		// AGE
		//
		tester.test("THIS_IS_A_SECRET_MESSAGE", "TSS_CTEAH__SR_SGIIAEEMSE", tester.options(9, "y"));

		// THI
		// S_I
		// S_A
		// _SE
		// CRE
		// T_M
		// ESS
		// AGE
		//
		//
		tester.test("THIS_IS_A_SECRET_MESSAGE", "TSS_CTEAH__SR_SGIIAEEMSE", tester.options(10, "y"));

		// THI
		// S_I
		// S_A
		// _SE
		// CRE
		// T_M
		// ESS
		// AGE
		//
		//
		//
		tester.test("THIS_IS_A_SECRET_MESSAGE", "TSS_CTEAH__SR_SGIIAEEMSE", tester.options(11, "y"));

		// TH
		// IS
		// _I
		// S_
		// A_
		// SE
		// CR
		// ET
		// _M
		// ES
		// SA
		// GE
		tester.test("THIS_IS_A_SECRET_MESSAGE", "TI_SASCE_ESGHSI__ERTMSAE", tester.options(12, "y"));

		// TH
		// IS
		// _I
		// S_
		// A_
		// SE
		// CR
		// ET
		// _M
		// ES
		// SA
		// GE
		//
		tester.test("THIS_IS_A_SECRET_MESSAGE", "TI_SASCE_ESGHSI__ERTMSAE", tester.options(13, "y"));

		// T
		// ...
		// E
		tester.test("THIS_IS_A_SECRET_MESSAGE", "THIS_IS_A_SECRET_MESSAGE", tester.options(24, "y"));

		// Out of length
		tester.test("THIS_IS_A_SECRET_MESSAGE", "THIS_IS_A_SECRET_MESSAGE", tester.options(100, "y"));
	}

	@Test
	public void testKeyPerX() {
		// Blank
		tester.test("", "", tester.options(2, "x"));
		tester.test("", "", tester.options(4, "x"));

		// TH
		// IS
		// _I
		// S_
		// A_
		// SE
		// CR
		// ET
		// _M
		// ES
		// SA
		// GE
		tester.test("THIS_IS_A_SECRET_MESSAGE", "TI_SASCE_ESGHSI__ERTMSAE", tester.options(2, "x"));

		// THI
		// S_I
		// S_A
		// _SE
		// CRE
		// T_M
		// ESS
		// AGE
		tester.test("THIS_IS_A_SECRET_MESSAGE", "TSS_CTEAH__SR_SGIIAEEMSE", tester.options(3, "x"));

		// THIS
		// _IS_
		// A_SE
		// CRET
		// _MES
		// SAGE
		tester.test("THIS_IS_A_SECRET_MESSAGE", "T_AC_SHI_RMAISSEEGS_ETSE", tester.options(4, "x"));

		// THIS_
		// IS_A_
		// SECRE
		// T_MES
		// SAGE
		tester.test("THIS_IS_A_SECRET_MESSAGE", "TISTSHSE_AI_CMGSAREE__ES", tester.options(5, "x"));

		// THIS_I
		// S_A_SE
		// CRET_M
		// ESSAGE
		tester.test("THIS_IS_A_SECRET_MESSAGE", "TSCEH_RSIAESS_TA_S_GIEME", tester.options(6, "x"));

		// THIS_IS
		// _A_SECR
		// ET_MESS
		// AGE
		tester.test("THIS_IS_A_SECRET_MESSAGE", "T_EAHATGI__ESSM_EEICSSRS", tester.options(7, "x"));

		// THIS_IS_
		// A_SECRET
		// _MESSAGE
		tester.test("THIS_IS_A_SECRET_MESSAGE", "TA_H_MISESES_CSIRASEG_TE", tester.options(8, "x"));

		// THIS_IS_A
		// _SECRET_M
		// ESSAGE
		tester.test("THIS_IS_A_SECRET_MESSAGE", "T_EHSSIESSCA_RGIEEST__AM", tester.options(9, "x"));

		// THIS_IS_A_
		// SECRET_MES
		// SAGE
		tester.test("THIS_IS_A_SECRET_MESSAGE", "TSSHEAICGSRE_EITS__MAE_S", tester.options(10, "x"));

		// THIS_IS_A_S
		// ECRET_MESSA
		// GE
		tester.test("THIS_IS_A_SECRET_MESSAGE", "TEGHCEIRSE_TI_SM_EAS_SSA", tester.options(11, "x"));

		// THIS_IS_A_SE
		// CRET_MESSAGE
		tester.test("THIS_IS_A_SECRET_MESSAGE", "TCHRIEST__IMSE_SAS_ASGEE", tester.options(12, "x"));

		// THIS_IS_A_SEC
		// RET_MESSAGE
		tester.test("THIS_IS_A_SECRET_MESSAGE", "TRHEITS__MIESS_SAA_GSEEC", tester.options(13, "x"));

		// THIS_IS_A_SECRET_MESSAG
		// E
		tester.test("THIS_IS_A_SECRET_MESSAGE", "TEHIS_IS_A_SECRET_MESSAG", tester.options(23, "x"));

		// THIS_IS_A_SECRET_MESSAGE
		tester.test("THIS_IS_A_SECRET_MESSAGE", "THIS_IS_A_SECRET_MESSAGE", tester.options(24, "x"));

		// Out of length
		tester.test("THIS_IS_A_SECRET_MESSAGE", "THIS_IS_A_SECRET_MESSAGE", tester.options(100, "x"));
	}
}
