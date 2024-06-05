# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"Q60.5","system":"icd10"},{"code":"Q60.2","system":"icd10"},{"code":"Q39.9","system":"icd10"},{"code":"Q79.9","system":"icd10"},{"code":"Q87.4","system":"icd10"},{"code":"Q20.9","system":"icd10"},{"code":"Q13.9","system":"icd10"},{"code":"Q52.9","system":"icd10"},{"code":"Q45.9","system":"icd10"},{"code":"Q78.9","system":"icd10"},{"code":"Q05.9","system":"icd10"},{"code":"Q84.9","system":"icd10"},{"code":"Q91.7","system":"icd10"},{"code":"Q76.9","system":"icd10"},{"code":"Q40.8","system":"icd10"},{"code":"Q82.9","system":"icd10"},{"code":"Q81.9","system":"icd10"},{"code":"Q66.9","system":"icd10"},{"code":"Q75.9","system":"icd10"},{"code":"Q05.4","system":"icd10"},{"code":"Q91.3","system":"icd10"},{"code":"Q14.9","system":"icd10"},{"code":"Q24.9","system":"icd10"},{"code":"Q28.8","system":"icd10"},{"code":"Q83.9","system":"icd10"},{"code":"Q01.9","system":"icd10"},{"code":"Q73.0","system":"icd10"},{"code":"Q30.9","system":"icd10"},{"code":"Q71.9","system":"icd10"},{"code":"Q75.8","system":"icd10"},{"code":"Q69.9","system":"icd10"},{"code":"Q73.1","system":"icd10"},{"code":"Q64.9","system":"icd10"},{"code":"Q23.9","system":"icd10"},{"code":"Q89.9","system":"icd10"},{"code":"Q54.9","system":"icd10"},{"code":"Q90.9","system":"icd10"},{"code":"Q35.9","system":"icd10"},{"code":"Q55.9","system":"icd10"},{"code":"Q22.9","system":"icd10"},{"code":"Q87.8","system":"icd10"},{"code":"Q31.9","system":"icd10"},{"code":"Q33.9","system":"icd10"},{"code":"Q27.8","system":"icd10"},{"code":"Q95.9","system":"icd10"},{"code":"Q18.9","system":"icd10"},{"code":"Q27.9","system":"icd10"},{"code":"Q77.9","system":"icd10"},{"code":"Q87","system":"icd10"},{"code":"Q70.9","system":"icd10"},{"code":"Q28.9","system":"icd10"},{"code":"Q63.9","system":"icd10"},{"code":"Q51.9","system":"icd10"},{"code":"Q03.9","system":"icd10"},{"code":"Q04.9","system":"icd10"},{"code":"Q73.8","system":"icd10"},{"code":"Q96.9","system":"icd10"},{"code":"Q72.9","system":"icd10"},{"code":"Q87.5","system":"icd10"},{"code":"Q25.9","system":"icd10"},{"code":"Q12.9","system":"icd10"},{"code":"Q35.8","system":"icd10"},{"code":"Q15.9","system":"icd10"},{"code":"Q65.9","system":"icd10"},{"code":"Q80.9","system":"icd10"},{"code":"Q26.9","system":"icd10"},{"code":"Q73","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-congenital-malformations-deformations-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-congenital-malformations-deformations-unspec---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-congenital-malformations-deformations-unspec---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-congenital-malformations-deformations-unspec---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
