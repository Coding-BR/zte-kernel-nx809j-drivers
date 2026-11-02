"""Adversarial controls against real FTMMOD facts; no canonical gate is changed."""
import copy
import importlib.util
from pathlib import Path
import unittest

TOOL = Path(__file__).resolve().parents[1]/'prove_ftmmod_relocated_state_access.py'
SPEC = importlib.util.spec_from_file_location('ftmmod_address_proof', TOOL)
M = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(M)
ROOT = TOOL.parents[2]
ATT = ROOT/'reverse_engineering/validation/reconstructed/ftmmod/attestation'


class RelocatedByteProofTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.stock = M.Evidence(ROOT/'reference_modules/full_vendor_boot/ftmmod.ko',
            ATT.parent/'offline_static/ghidra_stock/ftmmod.ko')
        cls.candidate = M.Evidence(ATT/'hard_protocol_core_20261027_r3/docker/work/ftmmod/cycle_2/ftmmod.ko',
            ATT/'candidate_ghidra_export_20261027_r1/ftmmod.ko')
        cls.proofs = M.run(cls.stock, cls.candidate)

    def pair(self, index=0):
        p = self.proofs[index]
        return copy.deepcopy(p['stock_facts']), copy.deepcopy(p['candidate_facts'])

    def reject(self, fact, pattern, index=0):
        stock, _ = self.pair(index)
        with self.assertRaisesRegex(ValueError, pattern):
            M.prove_pair(stock, fact)

    def test_two_real_deltas(self):
        self.assertEqual(len(self.proofs), 2)
        for p in self.proofs:
            self.assertTrue(p['proof']['same_object_byte_access'])
            self.assertEqual(p['proof']['stock']['low12'], 0xfe0)
            self.assertEqual(p['proof']['candidate']['low12'], 0)

    def test_reversed_sides(self):
        for i in range(2):
            a, b = self.pair(i)
            self.assertTrue(M.prove_pair(b, a)['same_object_byte_access'])

    def test_halfword_instruction(self):
        _, f = self.pair(); f['word'] |= 0x40000000
        self.reject(f, 'byte load/store')

    def test_sign_extending_instruction(self):
        _, f = self.pair(); f['word'] = (f['word'] & ~0xffc00000) | 0x39800000
        self.reject(f, 'byte load/store')

    def test_nonzero_raw_immediate(self):
        _, f = self.pair(); f['word'] |= 1 << 10
        self.reject(f, 'unrelocated immediate')

    def test_wrong_base_register(self):
        _, f = self.pair(); f['word'] ^= 1 << 5
        self.reject(f, 'ADRP')

    def test_wrong_destination_register(self):
        _, f = self.pair(); f['word'] ^= 1
        self.reject(f, 'instruction/P-Code')

    def test_adr_instead_of_adrp(self):
        _, f = self.pair(); f['high_word'] ^= 0x80000000
        self.reject(f, 'ADRP')

    def test_wrong_relocation_type(self):
        _, f = self.pair(); f['low_relocation']['type'] = 277
        self.reject(f, 'relocation types')

    def test_mismatched_page_target(self):
        _, f = self.pair(); f['high_relocation']['target_offset'] += 1
        self.reject(f, 'targets differ')

    def test_different_local_byte_object(self):
        _, f = self.pair()
        for key in ('low_relocation', 'high_relocation'): f[key]['object'] = 'different_byte'
        self.reject(f, 'semantics differ')

    def test_nonzero_offset_into_object(self):
        _, f = self.pair()
        for key in ('low_relocation', 'high_relocation'): f[key]['target_offset'] += 1
        self.reject(f, 'exactly one local byte')

    def test_larger_object(self):
        _, f = self.pair()
        for key in ('low_relocation', 'high_relocation'): f[key]['object_size'] = 8
        self.reject(f, 'exactly one local byte')

    def test_initialized_or_readonly_target(self):
        for field, value in [('section_type', 'SHT_PROGBITS'), ('block_write', False), ('section_flags', 2)]:
            with self.subTest(field=field):
                _, f = self.pair()
                for key in ('low_relocation', 'high_relocation'): f[key][field] = value
                self.reject(f, 'writable zero-initialized')

    def test_exported_target(self):
        _, f = self.pair()
        for key in ('low_relocation', 'high_relocation'): f[key]['binding'] = 'STB_GLOBAL'
        self.reject(f, 'exactly one local byte')

    def test_wrong_page_pcode(self):
        _, f = self.pair(); f['producer_record']['pcode'] = f['producer_record']['pcode'].replace('0x101000', '0x102000')
        self.reject(f, 'page differs')

    def test_wrong_address_register_in_pcode(self):
        _, f = self.pair(); f['access_records'][0]['pcode'] = f['access_records'][0]['pcode'].replace('0x4040', '0x4048')
        self.reject(f, 'address expression')

    def test_wrong_load_address_temporary(self):
        _, f = self.pair(); f['access_records'][1]['pcode'] = f['access_records'][1]['pcode'].replace('0xc500', '0xc508')
        self.reject(f, 'load width/address')

    def test_wrong_load_width(self):
        _, f = self.pair(); f['access_records'][1]['pcode'] = f['access_records'][1]['pcode'].replace('0x4a100, 1', '0x4a100, 2')
        self.reject(f, 'load width/address')

    def test_wrong_load_extension(self):
        _, f = self.pair(); f['access_records'][2]['pcode'] = f['access_records'][2]['pcode'].replace('INT_ZEXT', 'INT_SEXT')
        self.reject(f, 'destination/extension')

    def test_wrong_store_source(self):
        _, f = self.pair(1); f['access_records'][0]['pcode'] = f['access_records'][0]['pcode'].replace('0x4058', '0x4050')
        self.reject(f, 'store source', 1)

    def test_wrong_store_width(self):
        _, f = self.pair(1); f['access_records'][2]['pcode'] = f['access_records'][2]['pcode'].replace('0x74700, 1', '0x74700, 4')
        self.reject(f, 'store width/address/value', 1)

    def test_wrong_memory_space(self):
        _, f = self.pair(); f['access_records'][1]['pcode'] = f['access_records'][1]['pcode'].replace('0x1b1', '0x1b2')
        self.reject(f, 'memory-space')

    def test_extra_store_operation(self):
        _, f = self.pair(); f['access_records'].append(copy.deepcopy(f['access_records'][-1]))
        self.reject(f, 'instruction/P-Code')

    def test_intervening_call(self):
        function = copy.deepcopy(self.candidate.function('ftm_probe'))
        function['records'][94]['pcode'] = ' --- CALL (ram, 0x200000, 8)'
        with self.assertRaisesRegex(ValueError, 'control flow/userop'):
            self.candidate.access(function, 96)

    def test_branch_bypassing_producer(self):
        function = copy.deepcopy(self.candidate.function('show_simlock_status'))
        function['records'][0]['pcode'] = ' --- BRANCH (ram, 0x100858, 8)'
        with self.assertRaisesRegex(ValueError, 'bypasses ADRP'):
            self.candidate.access(function, 44)

    def test_intervening_partial_register_clobber(self):
        function = copy.deepcopy(self.candidate.function('ftm_probe'))
        function['records'][94]['pcode'] = '(register, 0x4048, 4) COPY (const, 0x0, 4)'
        with self.assertRaisesRegex(ValueError, 'missing or ambiguous instruction relocation'):
            self.candidate.access(function, 96)

    def test_missing_relocation(self):
        function = self.candidate.function('ftm_probe')
        with self.assertRaisesRegex(ValueError, 'missing or ambiguous instruction relocation'):
            self.candidate.relocation(function['section_index'], 0x150, 278)

    def test_wrong_export_identity(self):
        with self.assertRaisesRegex(ValueError, 'identity mismatch'):
            M.Evidence(self.stock.module, self.candidate.export)

    def test_page_arithmetic_boundary_enumeration(self):
        for page in (0, 0x100000, 0x7ffffffffffff000, 0xfffffffffffff000):
            for low12 in range(4096):
                address = page+low12
                self.assertEqual((address & ~4095)+(address & 4095), address)


if __name__ == '__main__':
    unittest.main()
