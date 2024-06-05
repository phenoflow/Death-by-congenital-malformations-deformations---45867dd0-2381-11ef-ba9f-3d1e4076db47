# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"Q97.1","system":"icd10"},{"code":"Q98.4","system":"icd10"},{"code":"Q96.2","system":"icd10"},{"code":"Q98.6","system":"icd10"},{"code":"Q99.9","system":"icd10"},{"code":"Q97.8","system":"icd10"},{"code":"Q98.3","system":"icd10"},{"code":"Q98.0","system":"icd10"},{"code":"Q95.3","system":"icd10"},{"code":"Q95.0","system":"icd10"},{"code":"Q98.5","system":"icd10"},{"code":"Q99.0","system":"icd10"},{"code":"Q97.0","system":"icd10"},{"code":"Q98.1","system":"icd10"},{"code":"Q98","system":"icd10"},{"code":"Q99","system":"icd10"},{"code":"Q98.8","system":"icd10"},{"code":"Q95.1","system":"icd10"},{"code":"Q95.2","system":"icd10"},{"code":"Q98.9","system":"icd10"},{"code":"Q98.2","system":"icd10"},{"code":"Q99.1","system":"icd10"},{"code":"Q97.9","system":"icd10"},{"code":"Q97","system":"icd10"},{"code":"Q","system":"icd10"},{"code":"Q99.8","system":"icd10"},{"code":"Q97.2","system":"icd10"},{"code":"Q97.3","system":"icd10"},{"code":"Q98.7","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-congenital-malformations-deformations-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["normal-death-by-congenital-malformations-deformations---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["normal-death-by-congenital-malformations-deformations---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["normal-death-by-congenital-malformations-deformations---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)