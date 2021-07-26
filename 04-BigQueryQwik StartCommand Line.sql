https://google.qwiklabs.com/focuses/577?parent=catalog&qlcampaign=6s-vnsj3-19

1
gcloud auth list
gcloud config list project



bq show bigquery-public-data:samples.shakespeare


Table bigquery-public-data:samples.shakespeare

   Last modified                  Schema                 Total Rows   Total Bytes   Expiration   Time Partitioning   Clustered Fields   Labels
 ----------------- ------------------------------------ ------------ ------------- ------------ ------------------- ------------------ --------
  14 Mar 17:16:45   |- word: string (required)           164656       6432064
                    |- word_count: integer (required)
                    |- corpus: string (required)
                    |- corpus_date: integer (required)

student_02_125968d211fd@cloudshell:~ (qwiklabs-gcp-01-1fe24152e8b0)$
student_02_125968d211fd@cloudshell:~ (qwiklabs-gcp-01-1fe24152e8b0)$




bq help query


bq query --use_legacy_sql=false \
'SELECT
   word,
   SUM(word_count) AS count
 FROM
   `bigquery-public-data`.samples.shakespeare
 WHERE
   word LIKE "%raisin%"
 GROUP BY
   word'



bq query --use_legacy_sql=false \
'SELECT
   word
 FROM
   `bigquery-public-data`.samples.shakespeare
 WHERE
   word = "huzzah"'


 bq ls
bq ls bigquery-public-data:


bq mk babynames



bq ls

wget http://www.ssa.gov/OACT/babynames/names.zip

unzip names.zip

ls

bq load babynames.names2010 yob2010.txt name:string,gender:string,count:integer



bq ls babynames


bq show babynames.names2010
bq query "SELECT name,count FROM babynames.names2010 WHERE gender = 'F' ORDER BY count DESC LIMIT 5"

bq query "SELECT name,count FROM babynames.names2010 WHERE gender = 'M' ORDER BY count ASC LIMIT 5"

bq rm -r babynames







