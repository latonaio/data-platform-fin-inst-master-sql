# data-platform-fin-inst-master-sql
data-platform-fin-inst-master-sqlは、データ連携基盤において、金融機関マスタデータを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-fin-inst-master-sqlは、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview 

## sqlの設定ファイル  
data-platform-fin-inst-master-sqlには、sqlの設定ファイルとして、以下のファイルが含まれます。   
設定ファイルに含まれる、金融機関コードと金融機関名のデータは、[こちら](https://senrinomitiwohitoaside.com/bankdata/)を参照しています。

* data-platform-fin-inst-master-sql-general-data.sql （データ連携基盤 金融機関マスタ - 金融機関データ）
* data-platform-fin-inst-master-sql-general-data-setup.sql （データ連携基盤 金融機関マスタ - 金融機関データ 設定）
* data-platform-fin-inst-master-sql-business-partner-data.sql （データ連携基盤 金融機関マスタ - ビジネスパートナデータ）

## 設定値
setupファイルには、各テーブルに対応して設定値が含まれています。  
設定値のサンプルは次の通りです。

| 金融機関コード | 金融機関名称 | 金融機関支店名称 | 
| -------------- | ---------- | -------------- | 
| 0001001        | みずほ銀行 | 東京営業部     | 
| 0001004        | みずほ銀行 | 丸の内中央     | 
| 0001005        | みずほ銀行 | 丸之内         | 
| 0001009        | みずほ銀行 | 神田駅前       | 
| 0001015        | みずほ銀行 | 築地           | 
| 0001020        | みずほ銀行 | 押上           | 
| 0001021        | みずほ銀行 | 麹町           | 
| 0001022        | みずほ銀行 | 浅草橋         | 

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法  
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  
