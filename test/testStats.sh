../bin/bam stats --in testFilesLibBam/testSam.sam 2> results/stats.txt \
&& diff results/stats.txt expected/stats.txt \
&& \
../bin/bam stats --basic --in testFilesLibBam/testSam.sam 2> results/basicStats.txt \
&& diff results/basicStats.txt expected/basicStats.txt \
&& \
../bin/bam stats --basic --in testFilesLibBam/testSam.sam --qual 2> results/qualStats.txt \
&& diff results/qualStats.txt expected/qualStats.txt \
&& \
../bin/bam stats --basic --in testFilesLibBam/testSam.sam --phred 2> results/phredStats.txt \
&& diff results/phredStats.txt expected/phredStats.txt \
&& \
../bin/bam stats --basic --in testFilesLibBam/testBam.bam --qual 2> results/qualStats2.txt \
&& diff results/qualStats2.txt expected/qualStats.txt \
&& \
../bin/bam stats --basic --in testFilesLibBam/sortedBam.bam 2> results/sortedStats.txt \
&& diff results/sortedStats.txt expected/sortedStats.txt \
&& \
../bin/bam stats --in testFilesLibBam/sortedBam.bam --qual 2> results/sortedQualStats.txt \
&& diff results/sortedQualStats.txt expected/sortedQualStats.txt \
&& \
../bin/bam stats --basic --in testFilesLibBam/sortedBam.bam --unmapped 2> results/unmappedStats.txt \
&& diff results/unmappedStats.txt expected/unmappedStats.txt \
&& \
../bin/bam stats --basic --in testFilesLibBam/sortedBam.bam --unmapped --qual 2> results/unmappedQualStats.txt \
&& diff results/unmappedQualStats.txt expected/unmappedQualStats.txt \
&& \
../bin/bam stats --basic --in testFilesLibBam/sortedBam.bam --unmapped --qual --refFile testFilesLibBam/sortedBam.bam.bai 2> results/unmappedQualStats1.txt \
&& diff results/unmappedQualStats1.txt expected/unmappedQualStats.txt \
&& \
../bin/bam stats --basic --in testFilesLibBam/testSam.sam --qual --maxNumReads 3 2> results/qualStatsMaxNum.txt \
&& diff results/qualStatsMaxNum.txt expected/qualStatsMaxNum.txt \
&& \
../bin/bam stats --in testFilesLibBam/sortedBam.bam --unmapped --qual --maxNumReads 1 2> results/unmappedQualStatsMaxNum.txt \
&& diff results/unmappedQualStatsMaxNum.txt expected/unmappedQualStatsMaxNum.txt \
&& \
../bin/bam stats --in testFiles/testStatsBaseQC.sam --baseQC results/statsBaseQCsam.txt 2> results/statsBaseQCsam.log \
&& diff results/statsBaseQCsam.txt expected/statsBaseQC.txt && diff results/statsBaseQCsam.log expected/statsBaseQC.log \
&& \
../bin/bam stats --in testFiles/testStatsBaseQC.bam --baseQC results/statsBaseQCbam.txt 2> results/statsBaseQCbam.log \
&& diff results/statsBaseQCbam.txt expected/statsBaseQC.txt && diff results/statsBaseQCbam.log expected/statsBaseQC.log \
&& \
../bin/bam stats --in testFiles/testStatsBaseQCSorted.bam --baseQC results/statsBaseQCreg.txt --regionList testFiles/region.txt 2> results/statsBaseQCreg.log \
&& diff results/statsBaseQCreg.txt expected/statsBaseQCreg.txt && diff results/statsBaseQCreg.log expected/statsBaseQCreg.log \
&& \
../bin/bam stats --in testFiles/testStatsBaseQCSorted.bam --baseQC results/statsBaseQCregQual2.txt --regionList testFiles/region.txt --minMapQual 2 2> results/statsBaseQCregQual2.log \
&& diff results/statsBaseQCregQual2.txt expected/statsBaseQCregQual2.txt && diff results/statsBaseQCregQual2.log expected/statsBaseQCreg.log \
&& \
../bin/bam stats --in testFiles/testStatsBaseQCSorted.bam --baseQC results/statsBaseQCregQual20.txt --regionList testFiles/region.txt --minMapQual 20 2> results/statsBaseQCregQual20.log \
&& diff results/statsBaseQCregQual20.txt expected/statsBaseQCregQual20.txt && diff results/statsBaseQCregQual20.log expected/statsBaseQCreg.log \
&& \
../bin/bam stats --in testFiles/testStatsBaseQCSorted.bam --baseQC results/statsBaseQCregQual40.txt --regionList testFiles/region.txt --minMapQual 40 2> results/statsBaseQCregQual40.log \
&& diff results/statsBaseQCregQual40.txt expected/statsBaseQCregQual40.txt && diff results/statsBaseQCregQual40.log expected/statsBaseQCreg.log \
&& \
../bin/bam stats --in testFiles/testStatsBaseQCSorted.bam --baseQC results/statsBaseQCregDB.txt --dbsnp testFiles/dbsnp.txt --regionList testFiles/region.txt 2> results/statsBaseQCregDB.log \
&& diff results/statsBaseQCregDB.txt expected/statsBaseQCregDB.txt && diff results/statsBaseQCregDB.log expected/statsBaseQCreg.log \
